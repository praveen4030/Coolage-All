import 'dart:io';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:mini_services/mini_services.dart';

abstract class IServicesRepo {
  Future<Either<FirebaseFailure, List<ServiceProviderModel>>>
      getServiceProviders(
    String userCollege,
    String serviceCategory,
  );
  Future<Either<FirebaseFailure, ServiceProviderModel>> addServiceProvider(
    String userCollege, {
    ServiceProviderModel? serviceProviderModel,
    File? file,
  });
  Future<Either<FirebaseFailure, Unit>> deleteServiceProvider(
    String userCollege,
    ServiceProviderModel? serviceProviderModel,
  );
}
