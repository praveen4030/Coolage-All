import 'package:canteen/canteen.dart';
import 'package:canteen/domain/models/cart_model.dart';
import 'package:canteen/domain/models/item_model.dart';
import 'package:canteen/domain/models/user_order.dart';
import 'package:canteen/domain/order/canteen_basic_details_model.dart';
import 'package:canteen/domain/models/deliverable_zones_model.dart';
import 'package:canteen/domain/i_canteen_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:user/user.dart';

@LazySingleton(as: ICanteenRepo)
class CanteenRepo extends ICanteenRepo {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  CanteenRepo(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, List<CanteenBasicDetailsModel>>>
      getCollegeCanteens(String college) async {
    try {
      final canteenDocs = await _firestore.canteenBasicDetailsCollection
          .where('college', isEqualTo: college)
          .where('isLive', isEqualTo: true)
          .get();

      final canteensList = canteenDocs.docs
          .map((snapshot) => CanteenBasicDetailsModel.fromMap(
              snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(canteensList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<ItemModel>>> getCanteenDetails(
      String canteenId) async {
    try {
      final doc = await _firestore.canteenItemsCollection.doc(canteenId).get();
      if (doc.exists && doc.data() != null) {
        final map = doc.data()! as Map<String, dynamic>;
        final productsMap = map['itemsMap'] as Map;
        Map<String, ItemModel> itemsMapModel = productsMap.map((key, value) =>
            MapEntry(key as String,
                ItemModel.fromMap(value as Map<String, dynamic>)));
        final modifyingMap = Map<String, ItemModel>.from(itemsMapModel);
        //here using modfying map to iterate and remove
        modifyingMap.forEach((key, value) {
          if ((value.image?.isNotEmpty ?? false)) {
            debugPrint('');
          }
        });
        //here using modfying map to iterate and remove
        modifyingMap.forEach((key, value) {
          if (!(value.isAvailable ?? false)) {
            itemsMapModel.remove(key);
          }
        });

        final docData = await _firestore.usersCanteenCartCollection
            .doc(Getters.getCurrentUserUid())
            .get();
        if (docData.exists && docData.data() != null) {
          final data = docData.data()! as Map<String, dynamic>;
          final returningData = data.map((key, value) => MapEntry(
                key,
                CartModel.fromMap(value as Map<String, dynamic>),
              ));
          if (data.containsKey(canteenId)) {
            final thisStoreCart =
                CartModel.fromMap(data[canteenId] as Map<String, dynamic>);
            final itemsMap = thisStoreCart.cartItemsMap;
            final itemsList = itemsMap!.values.toList();
            for (final item in itemsList) {
              if (itemsMapModel.containsKey(item.itemId)) {
                final itemModel = itemsMapModel[item.itemId];
                if (itemModel!.categoryPrices!.isEmpty) {
                  itemModel.qty = item.qty;
                } else {
                  for (int i = 0; i < item.categoryPrices!.length; i++) {
                    final model = item.categoryPrices![i];
                    itemModel.categoryPrices![i].qty = model.qty;
                  }
                }
                itemsMapModel.update(item.itemId!, (value) => itemModel);
              }
            }
          }
        }

        final productsList = itemsMapModel.values.toList();

        CanteenItemsHelper.sortCategoryItemsByPrice(productsList);

        return right(productsList);
      }
      return right([]);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Map<String, CartModel>>>
      getCanteenCartItems() async {
    try {
      final docData = await _firestore.usersCanteenCartCollection
          .doc(Getters.getCurrentUserUid())
          .get();
      if (!docData.exists || docData.data() == null) return right({});
      final data = docData.data()! as Map<String, dynamic>;
      final returningData = data.map((key, value) {
        final model = CartModel.fromMap(value as Map<String, dynamic>);

        return MapEntry(
          key,
          CartModel.fromMap(value as Map<String, dynamic>),
        );
      });
      final cartModelsList = returningData.values.toList();
      for (final model in cartModelsList) {
        final docData = await _firestore.canteenBasicDetailsCollection
            .doc(model.uniqueId)
            .get();
        final canteenModelData = docData.data()!;
        final canteenModel = CanteenBasicDetailsModel.fromMap(
            canteenModelData as Map<String, dynamic>);
        if (model.getItemsTotalQty() > 0) {
          model.canteenBasicDetailsModel = canteenModel;
        }
      }

      return right(returningData);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> addToCanteenCart(
      {CartModel? cartModel, bool? isDeleting}) async {
    try {
      final isDelete = cartModel!.qty! == 0;
      cartModel.timestamp = Timestamp.now();
      final map = cartModel.toMap();
      map.remove('canteenBasicDetailsModel');
      await _firestore.usersCanteenCartCollection
          .doc(Getters.getCurrentUserUid())
          .set({cartModel.uniqueId!: isDelete ? FieldValue.delete() : map},
              SetOptions(mergeFields: [cartModel.uniqueId!]));

      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, String>> placeCanteenOrder({
    CartModel? cartModel,
    bool? isDelivery,
    DeliverableZonesModel? deliverableZonesModel,
    String? deliveryAddress,
    CoolUser? coolUser,
    String? paymentId,
    bool? isTakeAway,
    String? comments,
  }) async {
    try {
      if (paymentId?.isEmpty ?? true) {
        return left(FirebaseFailure.customError('Invalid transaction id!'));
      }

      final doc = _firestore.canteenBasicDetailsCollection
          .doc(cartModel!.uniqueId)
          .canteenOngoingOrdersCollection
          .doc();
      final timestamp = Timestamp.now();
      final OrderModel orderModel = OrderModel(
        canteenName: cartModel.canteenBasicDetailsModel!.name,
        canteenLocation: cartModel.canteenBasicDetailsModel!.location,
        canteenContactNo: cartModel.canteenBasicDetailsModel!.contactNo,
        canteenId: cartModel.uniqueId,
        totalItemsQty: cartModel.qty,
        totalPrice: cartModel.getTotalPayableBasedOnDelivery(
            isDelivery!, deliverableZonesModel!),
        orderId: doc.id,
        itemsMap: cartModel.cartItemsMap,
        timestamp: timestamp,
        orderPlacedAtTimestamp: timestamp,
        isDelivery: isDelivery,
        deliveryAddress: deliveryAddress,
        orderRating: 0,
        orderPlaceByUid: coolUser!.uid,
        orderPlaceByName: coolUser.name,
        orderPlacedByContactNo: coolUser.phoneNo,
        orderPlacedByImage: coolUser.imageUrl,
        orderStatus: OrderStatus.paymentPending,
        paymentId: paymentId,
        userDeviceToken: coolUser.deviceToken,
        isTakeAway: isTakeAway,
        deliverableZonesModel: deliverableZonesModel,
        orderComments: comments ?? '',
      );

      await doc.set(orderModel.toMap());

      final userDoc =
          _firestore.usersOrdersCollection.doc(Getters.getCurrentUserUid());
      final list = [doc.id];
      UserOrderModel userOrderModel = UserOrderModel(
        timestamp: timestamp,
        orderId: doc.id,
        canteenId: cartModel.uniqueId,
        isOngoingOrder: true,
      );
      await userDoc.set({
        'canteenOrders': {
          doc.id: userOrderModel.toMap(),
        }
      }, SetOptions(merge: true));

      // final cartUserDoc = _firestore.usersCanteenCartCollection
      //     .doc(Getters.getCurrentUserUid());
      // await cartUserDoc.update({
      //   cartModel.uniqueId!: FieldValue.delete(),
      // });

      final orderCountlist = [orderModel.orderId];

      await _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenDocsCollection
          .ordersListDocument
          .set({
        'pending': FieldValue.arrayUnion(orderCountlist),
      }, SetOptions(merge: true));

      return right(doc.id);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<CanteenBasicDetailsModel>>>
      getCanteensNearby(String college) async {
    try {
      final coordinates = await CoolUser.getUserLocation();
      if (coordinates == null) {
        return left(FirebaseFailure.customError(
            'Something went wrong while getting nearby canteens!'));
      }
      final geo = Geoflutterfire();
      GeoFirePoint center = geo.point(
        latitude: coordinates.latitude,
        longitude: coordinates.longitude,
      );
      final radius = BehaviorSubject<double>.seeded(3);
      final query = FirebaseFirestore.instance.canteenBasicDetailsCollection
          .where('isLive', isEqualTo: true)
          .limit(70);
      final streamDocs = radius.switchMap((rad) {
        return geo.collection(collectionRef: query).within(
            center: center, radius: rad, field: 'point', strictMode: true);
      });
      final List<CanteenBasicDetailsModel> modelsList = [];
      final docsList = await streamDocs.first;
      docsList.forEach((element) {
        final model = CanteenBasicDetailsModel.fromMap(element.data()!);
        if (model.college != college) {
          modelsList.add(model);
        }
      });

      return right(modelsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
