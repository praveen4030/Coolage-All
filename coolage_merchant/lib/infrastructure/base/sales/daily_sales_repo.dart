import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/base/sales/daily_sale_model.dart';
import 'package:coolage_merchant/domain/base/sales/i_daily_sales_repo.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:dartz/dartz.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';

@LazySingleton(as: IDailySalesRepo)
class DailySalesRepo extends IDailySalesRepo {
  final FirebaseFirestore _firestore;

  DailySalesRepo(
    this._firestore,
  );

  @override
  Future<Either<FirebaseFailure, DailySaleModel>> getDailySalesReport(
      DateTime dateTime, String canteenId) async {
    try {
      final today12amTimestamp =
          DateTime(dateTime.year, dateTime.month, dateTime.day);
      final tomorrows12amTimestamp =
          today12amTimestamp.add(const Duration(days: 1));
      final ordersDoc = await _firestore.canteenBasicDetailsCollection
          .doc(canteenId)
          .canteenDeliveredOrdersCollection
          .where('timestamp', isGreaterThanOrEqualTo: today12amTimestamp)
          .where('timestamp', isLessThan: tomorrows12amTimestamp)
          .orderBy('timestamp')
          .get();
      final List<OrderModel> ordersList = ordersDoc.docs
          .map((snapshot) =>
              OrderModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();
      DailySaleModel dailySaleModel =
          DailySaleModel.fromOrdersList(dateTime, ordersList);
      return right(dailySaleModel);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<DailySaleModel>>>
      getInitialDailySalesReport(
          DateTime dateTime, String canteenId, int noOfDays) async {
    try {
      final currentDate = DateTime(dateTime.year, dateTime.month, dateTime.day);
      List<DailySaleModel> list = [];
      for (int i = 0; i < noOfDays; i++) {
        DateTime date = currentDate.add(Duration(days: i * -1));
        final opt = await getDailySalesReport(date, canteenId);
        opt.fold((failure) {
          return left(failure);
        }, (dailySaleModel) {
          list.add(dailySaleModel);
        });
      }
      return right(list);
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
