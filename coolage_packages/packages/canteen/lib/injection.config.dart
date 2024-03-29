// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/canteen_cards/canteen_cards_bloc.dart' as _i12;
import 'application/canteen_details/canteen_details_bloc.dart' as _i13;
import 'application/user_orders/user_orders_bloc.dart' as _i11;
import 'domain/i_canteen_card_repo.dart' as _i3;
import 'domain/i_canteen_repo.dart' as _i7;
import 'domain/i_canteen_user_orders_repo.dart' as _i9;
import 'infrastructure/canteen_repo.dart' as _i8;
import 'infrastructure/canteen_user_orders_repo.dart' as _i10;
import 'infrastructure/card_repo.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ICanteenCardsRepository>(
      () => _i4.CardRepo(get<_i5.FirebaseFirestore>(), get<_i6.Reference>()));
  gh.lazySingleton<_i7.ICanteenRepo>(() =>
      _i8.CanteenRepo(get<_i5.FirebaseFirestore>(), get<_i6.Reference>()));
  gh.lazySingleton<_i9.ICanteenUserOrdersRepo>(
      () => _i10.CanteenUserOrdersRepo(get<_i5.FirebaseFirestore>()));
  gh.factory<_i11.UserOrdersBloc>(
      () => _i11.UserOrdersBloc(get<_i9.ICanteenUserOrdersRepo>()));
  gh.factory<_i12.CanteenCardsBloc>(
      () => _i12.CanteenCardsBloc(get<_i3.ICanteenCardsRepository>()));
  gh.factory<_i13.CanteenDetailsBloc>(
      () => _i13.CanteenDetailsBloc(get<_i7.ICanteenRepo>()));
  return get;
}
