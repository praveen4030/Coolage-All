import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:dartz/dartz.dart';

import 'item_model.dart';

abstract class ICanteenRepo {
  Future<Either<FirebaseFailure, List<OrderModel>>> getOrders(
      String canteenId, OrderStatus orderStatus);
  Future<Either<FirebaseFailure, List<OrderModel>>> getMoreOrders(
      String canteenId, OrderModel lastOrder, OrderStatus orderStatus);

  Future<Either<FirebaseFailure, Unit>> acceptOrder(OrderModel orderModel);
  Future<Either<FirebaseFailure, Unit>> cancelOrder(OrderModel orderModel);
  Future<Either<FirebaseFailure, Unit>> cookedOrder(OrderModel orderModel);
  Future<Either<FirebaseFailure, Unit>> outForDeliveryOrder(
      OrderModel orderModel);
  Future<Either<FirebaseFailure, Unit>> deliverOrder(OrderModel orderModel);
}
