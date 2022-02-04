part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.saveProfileDetails() = _SaveProfileDetails;
  const factory OnboardingEvent.updateProfileFile({
    required File file,
  }) = _UpdateProfileFile;
  const factory OnboardingEvent.updateName({
    required String name,
  }) = _UpdateName;
  const factory OnboardingEvent.updateCollege({
    required String college,
  }) = _UpdateCollege;
  const factory OnboardingEvent.updateUserType({
    required String userType,
  }) = _UpdateUserType;
  const factory OnboardingEvent.updateCollegeEmailId({
    required String collegeEmailId,
  }) = _UpdateCollegeEmailId;
  const factory OnboardingEvent.updateFacultyDetails({
    required String designation,
    required String department,
  }) = _UpdateFacultyDetails;
  const factory OnboardingEvent.updateStudentDetails({
    required String degree,
    required String department,
    String? year,
    required String batchStart,
    String? batchFinish,
  }) = _UpdateStudentDetails;
}
