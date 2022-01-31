import 'package:canteen/canteen.dart';
import 'package:canteen/domain/models/user_order.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';

abstract class ICanteenUserOrdersRepo {
  //fetching all user orders ids
  Future<Either<FirebaseFailure, List<UserOrderModel>>> getUserOrdersIds();

  ///[previous orders]
  Future<Either<FirebaseFailure, List<OrderModel>>> getUserOrdersDetails(
      List<UserOrderModel> userOrdersList);
  Future<Either<FirebaseFailure, List<OrderModel>>> getMoreUserOrdersDetails(
      List<UserOrderModel> userOrdersList, int startFetchingIndex);
  Future<Either<FirebaseFailure, Unit>> repeatPreviousOrder(
      OrderModel orderModel);
  Future<Either<FirebaseFailure, Unit>> addToCartPreviousOrder(
      OrderModel orderModel);
}
