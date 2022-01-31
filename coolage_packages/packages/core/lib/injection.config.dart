// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/coolage_details/coolage_details_bloc.dart' as _i8;
import 'domain/features/i_coolage_details_repo.dart' as _i5;
import 'domain/helpers/firebase_injectable_modules.dart' as _i9;
import 'infrastructure/coolage_details/coolage_details.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.ICoolageDetailsRepo>(() => _i6.CoolageDetailsRepo());
  gh.lazySingleton<_i7.Reference>(
      () => firebaseInjectableModule.storageReference);
  gh.factory<_i8.CoolageDetailsBloc>(
      () => _i8.CoolageDetailsBloc(get<_i5.ICoolageDetailsRepo>()));
  return get;
}

class _$FirebaseInjectableModule extends _i9.FirebaseInjectableModule {}
