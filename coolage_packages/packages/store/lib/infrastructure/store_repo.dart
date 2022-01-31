import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/domain/base/canteen/cart_model.dart';
import 'package:coolage/domain/base/store/store_order_model.dart';
import 'package:coolage/domain/models/item_model.dart';
import 'package:coolage/domain/base/home/about/i_about_repo.dart';
import 'package:coolage/domain/base/store/i_store_repo.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/domain/base/store/store_model.dart';
import 'package:coolage/domain/core/helpers/constants.dart';
import 'package:coolage/domain/core/helpers/getter.dart';
import 'package:coolage/domain/user/cool_user.dart';
import 'package:dartz/dartz.dart';
import 'package:coolage/domain/models/about_college_model.dart';
import 'package:coolage/domain/core/failure/firebase_failure.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:coolage/infrastructure/core/firebase_helpers.dart';

@LazySingleton(as: IStoreRepo)
class StoreRepo extends IStoreRepo {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  StoreRepo(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, List<StoreBasicDetailsModel>>>
      getCategoryMoreStores(String category,
          StoreBasicDetailsModel storeBasicDetailsModel) async {
    try {
      final docslist = await _firestore.cityCollection
          .doc(Getters.getCurrentUserCity())
          .cityStoresWithBasicDetailsCollection
          .orderBy('timestamp', descending: true)
          .startAfter([storeBasicDetailsModel.timestamp])
          .limit(Constants.CITY_STORES_LIMIT)
          .get();
      final List<StoreBasicDetailsModel> list = docslist.docs
          .map((snapshot) => StoreBasicDetailsModel.fromMap(
              snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(list);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<StoreBasicDetailsModel>>>
      getCategoryStores(String category) async {
    try {
      final docslist = await _firestore.cityCollection
          .doc(Getters.getCurrentUserCity())
          .cityStoresWithBasicDetailsCollection
          .where('category', isEqualTo: category)
          .orderBy('timestamp', descending: true)
          .limit(Constants.CITY_STORES_LIMIT)
          .get();
      final List<StoreBasicDetailsModel> list = docslist.docs
          .map((snapshot) => StoreBasicDetailsModel.fromMap(
              snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(list);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<StoreBasicDetailsModel>>>
      getCollegeStores(String college) async {
    try {
      final storesDocs = await _firestore.storeBasicDetailsCollection
          .where('college', isEqualTo: college)
          .get();
      final storesList = storesDocs.docs
          .map((snapshot) => StoreBasicDetailsModel.fromMap(
              snapshot.data()! as Map<String, dynamic>))
          .toList();

      return right(storesList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<ItemModel>>> getStoreProducts(
      String storeId) async {
    try {
      final doc = await _firestore.storeProductsCollection.doc(storeId).get();
      if (doc.data() != null) {
        final map = doc.data()! as Map<String, dynamic>;
        final productsMap = map['productsMap'] as Map;
        Map<String, ItemModel> productsMapModel = productsMap.map(
            (key, value) => MapEntry(key as String,
                ItemModel.fromMap(value as Map<String, dynamic>)));

        final docData = await _firestore.usersStoreCartCollection
            .doc(Getters.getCurrentUserUid())
            .get();
        if (docData.exists && docData.data() != null) {
          final data = docData.data()! as Map<String, dynamic>;
          final returningData = data.map((key, value) => MapEntry(
                key,
                CartModel.fromMap(value as Map<String, dynamic>),
              ));
          if (data.containsKey(storeId)) {
            final thisStoreCart =
                CartModel.fromMap(data[storeId] as Map<String, dynamic>);
            final itemsMap = thisStoreCart.cartItemsMap;
            final itemsList = itemsMap!.values.toList();
            for (final item in itemsList) {
              final itemModel = productsMapModel[item.itemId];
              itemModel!.qty = item.qty;
              productsMapModel.update(item.itemId!, (value) => itemModel);
            }
          }
        }

        final productsList = productsMapModel.values.toList();

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
      getStoreCartItems() async {
    try {
      final docData = await _firestore.usersStoreCartCollection
          .doc(Getters.getCurrentUserUid())
          .get();
      if (!docData.exists || docData.data() == null) return right({});
      final data = docData.data()! as Map<String, dynamic>;
      final returningData = data.map((key, value) => MapEntry(
            key,
            CartModel.fromMap(value as Map<String, dynamic>),
          ));

      return right(returningData);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> placeStoreOrder(
      CartModel? cartModel, String? deliveryAddress, CoolUser? coolUser,
      {bool? isDelivery = false}) async {
    try {
      final doc = _firestore.storeBasicDetailsCollection
          .doc(cartModel!.uniqueId)
          .storeOngoingOrdersCollection
          .doc();
      final StoreOrderModel orderModel = StoreOrderModel(
        storeName: cartModel.canteenBasicDetailsModel!.name,
        storeLocation: cartModel.canteenBasicDetailsModel!.location,
        storeId: cartModel.uniqueId,
        totalItemsQty: cartModel.qty,
        totalPrice: cartModel.totalPrice,
        orderId: doc.id,
        itemsMap: cartModel.cartItemsMap,
        orderPlaceAtTimestamp: Timestamp.now(),
        isDelivery: isDelivery,
        deliveryAddress: deliveryAddress,
        orderRating: 0,
        storeOpenTill: cartModel.canteenBasicDetailsModel!.closeAtTimeOfDay,
        orderPlaceByUid: coolUser!.uid,
        orderPlaceByName: coolUser.name,
        orderPlacedByContactNo: coolUser.phoneNo,
        orderPlacedByImage: coolUser.imageUrl,
        isOrderAccepted: false,
        isOrderDelivered: false,
        isOrderPreparing: false,
      );

      await doc.set(orderModel.toMap());

      final userDoc =
          _firestore.usersOrdersCollection.doc(Getters.getCurrentUserUid());

      final list = [doc.id];
      await userDoc.set({
        'store': {
          'storeOngoingOrders': FieldValue.arrayUnion(list),
        }
      }, SetOptions(merge: true));

      final cartUserDoc =
          _firestore.usersStoreCartCollection.doc(Getters.getCurrentUserUid());
      await cartUserDoc.update({
        cartModel.uniqueId!: FieldValue.delete(),
      });

      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> addToStoreCart(
      bool? isIncreased,
      List<ItemModel>? storeItems,
      StoreBasicDetailsModel? storeBasicDetailsModel) async {
    try {
      double totalPrice = 0;
      int qty = 0;
      final Map<String, ItemModel> map = {};
      for (final item in storeItems!) {
        if (item.qty! != 0) {
          totalPrice += item.price! * item.qty!;
          qty += item.qty!;
          map.putIfAbsent(item.itemId!, () => item);
        }
      }

      CartModel cartModel = CartModel(
        uniqueId: storeBasicDetailsModel!.storeId,
        timestamp: Timestamp.now(),
        totalPrice: totalPrice,
        qty: qty,
        cartItemsMap: map,
      );

      final cartMap = cartModel.toMap();

      await _firestore.usersStoreCartCollection
          .doc(Getters.getCurrentUserUid())
          .set({
        storeBasicDetailsModel.storeId:
            storeItems.isEmpty ? FieldValue.delete() : cartMap,
      }, SetOptions(merge: true));

      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> addToStoreCartFromCart(
      CartModel? cartModel) async {
    try {
      final isDelete = cartModel!.qty! == 0;
      cartModel.timestamp = Timestamp.now();
      await _firestore.usersStoreCartCollection
          .doc(Getters.getCurrentUserUid())
          .update({
        cartModel.uniqueId!: isDelete ? FieldValue.delete() : cartModel.toMap()
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
