import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/base/canteen/i_canteen_repo.dart';
import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:coolage_merchant/domain/core/helpers/constants.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:coolage_merchant/domain/user/user_order.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';

@LazySingleton(as: ICanteenRepo)
class CanteenRepo extends ICanteenRepo {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  CanteenRepo(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, List<OrderModel>>> getOrders(
      String canteenId, OrderStatus orderStatus) async {
    try {
      Query query;
      if (orderStatus == OrderStatus.delivered) {
        query = _firestore.canteenBasicDetailsCollection
            .doc(canteenId)
            .canteenDeliveredOrdersCollection;
      } else if (orderStatus == OrderStatus.canceled) {
        query = _firestore.canteenBasicDetailsCollection
            .doc(canteenId)
            .canteenCanceledOrdersCollection;
      } else {
        query = _firestore.canteenBasicDetailsCollection
            .doc(canteenId)
            .canteenOngoingOrdersCollection
            .where('orderStatus', isEqualTo: getOrderStatusString(orderStatus));
      }
      final ordersDoc = await query
          .orderBy('timestamp', descending: true)
          .limit(Constants.ORDERS_LIMIT)
          .get();
      final List<OrderModel> ordersList = ordersDoc.docs
          .map((snapshot) =>
              OrderModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();

      return right(ordersList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<OrderModel>>> getMoreOrders(
      String canteenId, OrderModel lastOrder, OrderStatus orderStatus) async {
    try {
      Query query;

      if (orderStatus == OrderStatus.delivered) {
        query = _firestore.canteenBasicDetailsCollection
            .doc(canteenId)
            .canteenDeliveredOrdersCollection;
      } else if (orderStatus == OrderStatus.canceled) {
        query = _firestore.canteenBasicDetailsCollection
            .doc(canteenId)
            .canteenCanceledOrdersCollection;
      } else {
        query = _firestore.canteenBasicDetailsCollection
            .doc(canteenId)
            .canteenOngoingOrdersCollection
            .where('orderStatus', isEqualTo: getOrderStatusString(orderStatus));
      }
      final ordersDoc = await query
          .orderBy('timestamp', descending: true)
          .startAfter([lastOrder.timestamp])
          .limit(Constants.ORDERS_LIMIT)
          .get();
      final List<OrderModel> ordersList = ordersDoc.docs
          .map((snapshot) =>
              OrderModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();

      return right(ordersList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> acceptOrder(
      OrderModel orderModel) async {
    try {
      final orderDoc = _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenOngoingOrdersCollection
          .doc(orderModel.orderId);
      orderModel.timestamp = Timestamp.now();
      orderModel.orderAcceptedAtTimestamp = Timestamp.now();
      orderModel.orderStatus = OrderStatus.preparing;
      await orderDoc.update(orderModel.toMap());

      final list = [orderModel.orderId];

      if (orderModel.orderComments == null) {
        const pending = 'pendingOrdersCount';
        await _firestore.canteenBasicDetailsCollection
            .doc(orderModel.canteenId)
            .update({
          'ongoingOrdersCountModel.$pending': FieldValue.increment(-1),
        });
        await _firestore.canteenBasicDetailsCollection
            .doc(orderModel.canteenId)
            .canteenDocsCollection
            .ordersListDocument
            .set({
          'preparing': FieldValue.arrayUnion(list),
        }, SetOptions(merge: true));
      } else {
        await _firestore.canteenBasicDetailsCollection
            .doc(orderModel.canteenId)
            .canteenDocsCollection
            .ordersListDocument
            .set({
          'pending': FieldValue.arrayRemove(list),
          'preparing': FieldValue.arrayUnion(list),
        }, SetOptions(merge: true));
      }

      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> cancelOrder(
      OrderModel orderModel) async {
    try {
      final orderDoc = _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenCanceledOrdersCollection
          .doc(orderModel.orderId);

      orderModel.timestamp = Timestamp.now();
      orderModel.orderStatus = OrderStatus.canceled;
      await orderDoc.set(orderModel.toMap());
      await _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenOngoingOrdersCollection
          .doc(orderModel.orderId)
          .delete();

      final list = [orderModel.orderId];
      if (orderModel.orderComments == null) {
        const pending = 'pendingOrdersCount';
        await _firestore.canteenBasicDetailsCollection
            .doc(orderModel.canteenId)
            .update({
          'ongoingOrdersCountModel.$pending': FieldValue.increment(-1),
        });
      } else {
        await _firestore.canteenBasicDetailsCollection
            .doc(orderModel.canteenId)
            .canteenDocsCollection
            .ordersListDocument
            .set({
          'pending': FieldValue.arrayRemove(list),
        }, SetOptions(merge: true));
      }
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> cookedOrder(
      OrderModel orderModel) async {
    try {
      final orderDoc = _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenOngoingOrdersCollection
          .doc(orderModel.orderId);
      orderModel.timestamp = Timestamp.now();
      orderModel.orderPreparedAtTimestamp = Timestamp.now();
      orderModel.orderStatus = OrderStatus.prepared;
      await orderDoc.update(orderModel.toMap());

      final list = [orderModel.orderId];

      await _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenDocsCollection
          .ordersListDocument
          .set({
        'prepared': FieldValue.arrayUnion(list),
        'preparing': FieldValue.arrayRemove(list),
      }, SetOptions(merge: true));

      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deliverOrder(
      OrderModel orderModel) async {
    try {
      final orderDoc = _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenDeliveredOrdersCollection
          .doc(orderModel.orderId);
      orderModel.timestamp = Timestamp.now();
      orderModel.orderDeliveredAtTimestamp = Timestamp.now();
      orderModel.orderStatus = OrderStatus.delivered;
      await orderDoc.set(orderModel.toMap());

      await _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenOngoingOrdersCollection
          .doc(orderModel.orderId)
          .delete();
      final userOrder = UserOrderModel(
        timestamp: Timestamp.now(),
        orderId: orderModel.orderId,
        canteenId: orderModel.canteenId,
        isOngoingOrder: false,
      );

      await _firestore.usersOrdersCollection
          .doc(orderModel.orderPlaceByUid)
          .update({
        'canteenOrders.${orderModel.orderId}': userOrder.toMap(),
      });

      final list = [orderModel.orderId];

      if (orderModel.isDelivery!) {
        await _firestore.canteenBasicDetailsCollection
            .doc(orderModel.canteenId)
            .canteenDocsCollection
            .ordersListDocument
            .set({
          'delivering': FieldValue.arrayRemove(list),
        }, SetOptions(merge: true));
      } else {
        await _firestore.canteenBasicDetailsCollection
            .doc(orderModel.canteenId)
            .canteenDocsCollection
            .ordersListDocument
            .set({
          'prepared': FieldValue.arrayRemove(list),
        }, SetOptions(merge: true));
      }

      DateTime date = DateTime.now();
      int month = date.month;
      int day = date.day;

      await _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenSalesDocsCollection
          .doc(date.year.toString())
          .set({
        month.toString(): {
          day.toString(): {
            'sale': FieldValue.increment(orderModel.totalPrice!),
            'count': FieldValue.increment(1),
          },
        },
      }, SetOptions(merge: true));
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> outForDeliveryOrder(
      OrderModel orderModel) async {
    try {
      final orderDoc = _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenOngoingOrdersCollection
          .doc(orderModel.orderId);
      orderModel.timestamp = Timestamp.now();
      orderModel.orderStatus = OrderStatus.delivering;
      await orderDoc.update(orderModel.toMap());

      final list = [orderModel.orderId];

      await _firestore.canteenBasicDetailsCollection
          .doc(orderModel.canteenId)
          .canteenDocsCollection
          .ordersListDocument
          .set({
        'prepared': FieldValue.arrayRemove(list),
        'delivering': FieldValue.arrayUnion(list),
      }, SetOptions(merge: true));

      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
