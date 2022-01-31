part of 'education_details_bloc.dart';

@freezed
class EducationDetailsState with _$EducationDetailsState {
  const factory EducationDetailsState({
    required bool isLoading,
    required bool isDeleteLoading,
    required bool isVisibilityLoading,
    required Option<Either<FirebaseFailure, String>> actionFailureOpt,
  }) = _EducationDetailsState;
  factory EducationDetailsState.initial() => EducationDetailsState(
        isLoading: false,
        isVisibilityLoading: false,
        isDeleteLoading: false,
        actionFailureOpt: none(),
      );
}
