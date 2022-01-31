// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/college/college_bloc.dart' as _i9;
import 'application/college_groups/college_groups_bloc.dart' as _i10;
import 'domain/i_college_group_repo.dart' as _i3;
import 'domain/i_college_repo.dart' as _i7;
import 'infrastructure/college_group_repo.dart' as _i4;
import 'infrastructure/college_repo.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ICollegeGroupRepo>(() =>
      _i4.CollegeGroupRepo(get<_i5.FirebaseFirestore>(), get<_i6.Reference>()));
  gh.lazySingleton<_i7.ICollegeRepo>(() =>
      _i8.CollegeRepo(get<_i5.FirebaseFirestore>(), get<_i6.Reference>()));
  gh.factory<_i9.CollegeBloc>(() => _i9.CollegeBloc(get<_i7.ICollegeRepo>()));
  gh.factory<_i10.CollegeGroupsBloc>(
      () => _i10.CollegeGroupsBloc(get<_i3.ICollegeGroupRepo>()));
  return get;
}
