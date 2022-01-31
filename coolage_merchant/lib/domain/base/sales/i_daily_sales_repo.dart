import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/base/sales/daily_sale_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IDailySalesRepo {
  Future<Either<FirebaseFailure, DailySaleModel>> getDailySalesReport(
      DateTime dateTime, String canteenId);
  Future<Either<FirebaseFailure, List<DailySaleModel>>>
      getInitialDailySalesReport(
          DateTime dateTime, String canteenId, int noOfDays);
}
