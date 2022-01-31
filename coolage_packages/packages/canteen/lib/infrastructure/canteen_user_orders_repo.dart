import 'package:canteen/canteen.dart';
import 'package:canteen/domain/models/cart_model.dart';
import 'package:canteen/domain/i_canteen_user_orders_repo.dart';
import 'package:canteen/domain/models/user_order.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:user/user.dart';

@LazySingleton(as: ICanteenUserOrdersRepo)
class CanteenUserOrdersRepo extends ICanteenUserOrdersRepo {
  final FirebaseFirestore _firestore;

  CanteenUserOrdersRepo(
    this._firestore,
  );

  @override
  Future<Either<FirebaseFailure, List<UserOrderModel>>>
      getUserOrdersIds() async {
    try {
      final ordersDoc = await _firestore.usersOrdersCollection
          .doc(Getters.getCurrentUserUid())
          .get();
      if (!ordersDoc.exists) {
        return right([]);
      }

      Map<String, dynamic> userOrdersMap = {};
      if (ordersDoc.data() != null) {
        userOrdersMap = (ordersDoc.data()!
            as Map<String, dynamic>)['canteenOrders'] as Map<String, dynamic>;
      }
      final userOrdersList = userOrdersMap
          .map((key, value) => MapEntry(
              key, UserOrderModel.fromMap(value as Map<String, dynamic>)))
          .values
          .toList();
      userOrdersList.sort((a, b) => b.timestamp!.compareTo(a.timestamp!));

      return right(userOrdersList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<OrderModel>>> getUserOrdersDetails(
      List<UserOrderModel> userOrdersList) async {
    try {
      //fetch first 3 orders only
      final List<OrderModel> ordersList = [];
      for (int i = 0;
          i < Constants.MORE_USER_ORDERS_LIMIT && i < userOrdersList.length;
          i++) {
        final userOrder = userOrdersList[i];
        DocumentReference docRef;
        if (userOrder.isOngoingOrder!) {
          docRef = _firestore.canteenBasicDetailsCollection
              .doc(userOrder.canteenId)
              .canteenOngoingOrdersCollection
              .doc(userOrder.orderId);
        } else {
          docRef = _firestore.canteenBasicDetailsCollection
              .doc(userOrder.canteenId)
              .canteenDeliveredOrdersCollection
              .doc(userOrder.orderId);
        }
        final orderDoc = await docRef.get();
        if (orderDoc.exists && orderDoc.data() != null) {
          final orderModel =
              OrderModel.fromMap(orderDoc.data()! as Map<String, dynamic>);
          ordersList.add(orderModel);
        }
      }
      return right(ordersList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<OrderModel>>> getMoreUserOrdersDetails(
      List<UserOrderModel> userOrdersList, int startFetchingIndex) async {
    try {
      //fetch first 3 orders only
      final List<OrderModel> ordersList = [];
      for (int i = startFetchingIndex;
          i < startFetchingIndex + Constants.MORE_USER_ORDERS_LIMIT &&
              i < userOrdersList.length;
          i++) {
        final userOrder = userOrdersList[i];
        DocumentReference docRef;
        if (userOrder.isOngoingOrder!) {
          docRef = _firestore.canteenBasicDetailsCollection
              .doc(userOrder.canteenId)
              .canteenOngoingOrdersCollection
              .doc(userOrder.orderId);
        } else {
          docRef = _firestore.canteenBasicDetailsCollection
              .doc(userOrder.canteenId)
              .canteenDeliveredOrdersCollection
              .doc(userOrder.orderId);
        }
        final orderDoc = await docRef.get();
        if (orderDoc.exists && orderDoc.data() != null) {
          final orderModel =
              OrderModel.fromMap(orderDoc.data()! as Map<String, dynamic>);
          ordersList.add(orderModel);
        }
      }
      return right(ordersList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> addToCartPreviousOrder(
      OrderModel orderModel) async {
    try {
      final cartModel = CartModel(
        totalPrice: orderModel.totalPrice,
        qty: orderModel.totalItemsQty,
        cartItemsMap: orderModel.itemsMap,
        uniqueId: orderModel.canteenId,
        timestamp: Timestamp.now(),
      );
      final map = cartModel.toMap();
      await _firestore.usersCanteenCartCollection
          .doc(Getters.getCurrentUserUid())
          .set({cartModel.uniqueId!: map},
              SetOptions(mergeFields: [cartModel.uniqueId!]));
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> repeatPreviousOrder(
      OrderModel orderModel) async {
    try {
      final doc = _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenOngoingOrdersCollection
          .doc();
      final timestamp = Timestamp.now();
      final OrderModel model = OrderModel.fromMap(orderModel.toMap());
      model.orderId = doc.id;
      model.timestamp = timestamp;
      model.orderPlacedAtTimestamp = timestamp;
      model.orderStatus = OrderStatus.pending;

      await doc.set(model.toMap());

      final userDoc =
          _firestore.usersOrdersCollection.doc(Getters.getCurrentUserUid());
      final list = [doc.id];
      UserOrderModel userOrderModel = UserOrderModel(
        timestamp: timestamp,
        orderId: doc.id,
        canteenId: orderModel.canteenId,
        isOngoingOrder: true,
      );
      await userDoc.set({
        'canteenOrders': {
          doc.id: userOrderModel.toMap(),
        }
      }, SetOptions(merge: true));

      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
