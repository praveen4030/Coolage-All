import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:user/domain/profile/i_profile_repo.dart';
import 'package:user/user.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_bloc.freezed.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final IProfileRepo iProfileRepo;

  OnboardingBloc(this.iProfileRepo) : super(OnboardingState.initial());

  @override
  Stream<OnboardingState> mapEventToState(OnboardingEvent event) async* {
    yield* event.map(
      saveProfileDetails: (e) async* {
        yield state.copyWith(
          isLoading: true,
          actionFailureOpt: none(),
        );
        final link = await DynamicLinkFunctions.createUserDynamicLink(
            Getters.getCurrentUserUid());
        final model = CoolUser(
          name: state.name,
          userType: state.userType,
          college: state.userCollege,
          batchStart: state.batchStart,
          batchFinish: state.batchFinish,
          emailId: state.collegeEmailId,
          designation: state.designation,
          branch: state.department,
          degree: state.degree,
          year: state.year,
          phoneNo: Getters.getUserPhoneNo(),
          uid: Getters.getCurrentUserUid(),
          nameInLowerCase: state.name.toLowerCase(),
          lastLoginAt: Timestamp.now(),
          appVersion: await CoolUser.getAppVersion(),
          signUpAt: Timestamp.now(),
          deliveryAddressesMap: {},
          profileLink: link,
        );

        final opt = await iProfileRepo.updateProfileDetails(model,
            file: state.file, isSaving: true);
        yield opt.fold((failure) {
          return state.copyWith(
            actionFailureOpt: some(left(failure)),
            isLoading: false,
          );
        }, (model) {
          const message = "Details Updated successfully";
          return state.copyWith(
            actionFailureOpt: some(right(message)),
            isLoading: false,
          );
        });
      },
      updateName: (e) async* {
        yield state.copyWith(
          name: e.name,
          actionFailureOpt: none(),
        );
      },
      updateProfileFile: (e) async* {
        yield state.copyWith(
          file: e.file,
          actionFailureOpt: none(),
        );
      },
      updateUserType: (e) async* {
        yield state.copyWith(
          userType: e.userType,
          actionFailureOpt: none(),
        );
      },
      updateCollegeEmailId: (e) async* {
        yield state.copyWith(
          collegeEmailId: e.collegeEmailId,
          actionFailureOpt: none(),
        );
      },
      updateCollege: (e) async* {
        yield state.copyWith(
          userCollege: e.college,
          actionFailureOpt: none(),
        );
      },
      updateStudentDetails: (e) async* {
        yield state.copyWith(
          degree: e.degree,
          department: e.department,
          year: e.year,
          batchStart: e.batchStart,
          batchFinish: e.batchFinish,
          actionFailureOpt: none(),
        );
      },
      updateFacultyDetails: (e) async* {
        yield state.copyWith(
          department: e.department,
          designation: e.designation,
          actionFailureOpt: none(),
        );
      },
    );
  }
}
