// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/authentication_bloc.dart' as _i16;
import 'application/profile/achievements/achievements_bloc.dart' as _i15;
import 'application/profile/campus_pors/campus_pors_bloc.dart' as _i17;
import 'application/profile/education_details/education_details_bloc.dart'
    as _i18;
import 'application/profile/general_details/general_details_bloc.dart' as _i19;
import 'application/profile/languages/languages_bloc.dart' as _i10;
import 'application/profile/projects/projects_bloc.dart' as _i11;
import 'application/profile/skills/skills_bloc.dart' as _i12;
import 'application/profile/user_details/user_details_bloc.dart' as _i13;
import 'application/profile/work_experience/work_experience_bloc.dart' as _i14;
import 'domain/i_auth_facade.dart' as _i3;
import 'domain/profile/i_profile_repo.dart' as _i8;
import 'infrastructure/auth_facade.dart' as _i4;
import 'infrastructure/profile/profile_repo.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(() => _i4.AuthFacade(
      get<_i5.FirebaseAuth>(),
      get<_i6.FirebaseFirestore>(),
      get<_i7.Reference>()));
  gh.lazySingleton<_i8.IProfileRepo>(() =>
      _i9.ProfileRepo(get<_i6.FirebaseFirestore>(), get<_i7.Reference>()));
  gh.factory<_i10.LanguagesBloc>(
      () => _i10.LanguagesBloc(get<_i8.IProfileRepo>()));
  gh.factory<_i11.ProjectsBloc>(
      () => _i11.ProjectsBloc(get<_i8.IProfileRepo>()));
  gh.factory<_i12.SkillsBloc>(() => _i12.SkillsBloc(get<_i8.IProfileRepo>()));
  gh.factory<_i13.UserDetailsBloc>(
      () => _i13.UserDetailsBloc(get<_i8.IProfileRepo>()));
  gh.factory<_i14.WorkExperienceBloc>(
      () => _i14.WorkExperienceBloc(get<_i8.IProfileRepo>()));
  gh.factory<_i15.AchievementsBloc>(
      () => _i15.AchievementsBloc(get<_i8.IProfileRepo>()));
  gh.factory<_i16.AuthenticationBloc>(
      () => _i16.AuthenticationBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i17.CampusPorsBloc>(
      () => _i17.CampusPorsBloc(get<_i8.IProfileRepo>()));
  gh.factory<_i18.EducationDetailsBloc>(
      () => _i18.EducationDetailsBloc(get<_i8.IProfileRepo>()));
  gh.factory<_i19.GeneralDetailsBloc>(
      () => _i19.GeneralDetailsBloc(get<_i8.IProfileRepo>()));
  return get;
}
