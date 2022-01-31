part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    required String name,
    File? file,
    required String userType,
    String? userCollege,
    String? collegeEmailId,
    String? designation,
    String? department,
    String? degree,
    String? batchStart,
    String? batchFinish,
    String? year,
    required bool isLoading,
    required Option<Either<FirebaseFailure, String>> actionFailureOpt,
  }) = _OnboardingState;
  factory OnboardingState.initial() => OnboardingState(
        isLoading: false,
        actionFailureOpt: none(),
        name: '',
        userType: '',
      );
}
