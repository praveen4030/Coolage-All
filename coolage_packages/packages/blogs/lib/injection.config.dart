// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/blogs/blogs_bloc.dart' as _i7;
import 'domain/i_blog_repository.dart' as _i3;
import 'infrastructure/blogs_repo.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IBlogRepository>(
      () => _i4.BlogsRepo(get<_i5.FirebaseFirestore>(), get<_i6.Reference>()));
  gh.factory<_i7.BlogsBloc>(() => _i7.BlogsBloc(get<_i3.IBlogRepository>()));
  return get;
}
