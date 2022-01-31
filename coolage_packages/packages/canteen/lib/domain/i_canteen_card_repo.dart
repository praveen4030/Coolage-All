import 'dart:io';

import 'package:cards/cards.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';

abstract class ICanteenCardsRepository {
  Future<Either<FirebaseFailure, List<Cards>>> getCanteenCards();
  Future<Either<FirebaseFailure, Cards>> addCanteenCard(
      String userCollege, File file);
  Future<Either<FirebaseFailure, Unit>> deleteCanteenCard(
      String userCollege, Cards cards);
}
