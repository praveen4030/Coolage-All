// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:user/domain/profile/i_profile_repo.dart' as _i4;

import 'application/bloc/user_profile_bloc.dart' as _i5;
import 'application/profile/onboarding/onboarding_bloc.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.OnboardingBloc>(
      () => _i3.OnboardingBloc(get<_i4.IProfileRepo>()));
  gh.factory<_i5.UserProfileBloc>(() => _i5.UserProfileBloc());
  return get;
}
