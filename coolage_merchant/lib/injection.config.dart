// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/authentication_bloc.dart' as _i25;
import 'application/canteen/canteen_basic_functions/canteen_basic_functions_bloc.dart'
    as _i12;
import 'application/canteen/menu/canteen_menu_bloc.dart' as _i26;
import 'application/canteen/orders_canceled/orders_canceled_bloc.dart' as _i19;
import 'application/canteen/orders_delivered/orders_delivering_bloc.dart'
    as _i20;
import 'application/canteen/orders_finished/orders_finished_bloc.dart' as _i21;
import 'application/canteen/orders_pending/orders_pending_bloc.dart' as _i22;
import 'application/canteen/orders_prepared/orders_prepared_bloc.dart' as _i23;
import 'application/canteen/orders_preparing/orders_preparing_bloc.dart'
    as _i24;
import 'application/canteen/sales_statistics/sales_statistics_bloc.dart'
    as _i11;
import 'application/home/drawer/drawer_bloc.dart' as _i3;
import 'domain/auth/i_auth_facade.dart' as _i13;
import 'domain/base/canteen/i_canteen_basic_repo.dart' as _i6;
import 'domain/base/canteen/i_canteen_menu_repo.dart' as _i15;
import 'domain/base/canteen/i_canteen_repo.dart' as _i17;
import 'domain/base/sales/i_daily_sales_repo.dart' as _i8;
import 'infrastructure/auth/auth_facade.dart' as _i14;
import 'infrastructure/base/canteen/canteen_basic_repo.dart' as _i7;
import 'infrastructure/base/canteen/canteen_menu_repo.dart' as _i16;
import 'infrastructure/base/canteen/canteen_repo.dart' as _i18;
import 'infrastructure/base/sales/daily_sales_repo.dart' as _i9;
import 'infrastructure/core/firebase_injectable_modules.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.DrawerBloc>(() => _i3.DrawerBloc());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.ICanteenBasicRepo>(
      () => _i7.CanteenBasicRepo(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IDailySalesRepo>(
      () => _i9.DailySalesRepo(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i10.Reference>(
      () => firebaseInjectableModule.storageReference);
  gh.factory<_i11.SalesStatisticsBloc>(
      () => _i11.SalesStatisticsBloc(get<_i8.IDailySalesRepo>()));
  gh.factory<_i12.CanteenBasicFunctionsBloc>(
      () => _i12.CanteenBasicFunctionsBloc(get<_i6.ICanteenBasicRepo>()));
  gh.lazySingleton<_i13.IAuthFacade>(() => _i14.AuthFacade(
      get<_i4.FirebaseAuth>(),
      get<_i5.FirebaseFirestore>(),
      get<_i10.Reference>()));
  gh.lazySingleton<_i15.ICanteenMenuRepo>(() => _i16.CanteenMenuRepo(
      get<_i5.FirebaseFirestore>(), get<_i10.Reference>()));
  gh.lazySingleton<_i17.ICanteenRepo>(() =>
      _i18.CanteenRepo(get<_i5.FirebaseFirestore>(), get<_i10.Reference>()));
  gh.factory<_i19.OrdersCanceledBloc>(
      () => _i19.OrdersCanceledBloc(get<_i17.ICanteenRepo>()));
  gh.factory<_i20.OrdersDeliveringBloc>(
      () => _i20.OrdersDeliveringBloc(get<_i17.ICanteenRepo>()));
  gh.factory<_i21.OrdersFinishedBloc>(
      () => _i21.OrdersFinishedBloc(get<_i17.ICanteenRepo>()));
  gh.factory<_i22.OrdersPendingBloc>(
      () => _i22.OrdersPendingBloc(get<_i17.ICanteenRepo>()));
  gh.factory<_i23.OrdersPreparedBloc>(
      () => _i23.OrdersPreparedBloc(get<_i17.ICanteenRepo>()));
  gh.factory<_i24.OrdersPreparingBloc>(
      () => _i24.OrdersPreparingBloc(get<_i17.ICanteenRepo>()));
  gh.factory<_i25.AuthenticationBloc>(
      () => _i25.AuthenticationBloc(get<_i13.IAuthFacade>()));
  gh.factory<_i26.CanteenMenuBloc>(
      () => _i26.CanteenMenuBloc(get<_i15.ICanteenMenuRepo>()));
  return get;
}

class _$FirebaseInjectableModule extends _i27.FirebaseInjectableModule {}
