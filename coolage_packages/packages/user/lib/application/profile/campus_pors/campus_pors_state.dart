part of 'campus_pors_bloc.dart';

@freezed
class CampusPorsState with _$CampusPorsState {
  const factory CampusPorsState({
    required bool isLoading,
    required bool isDeleteLoading,
    required bool isVisibilityLoading,
    required Option<Either<FirebaseFailure, String>> actionFailureOpt,
  }) = _CampusPorsState;
  factory CampusPorsState.initial() => CampusPorsState(
        isLoading: false,
        isVisibilityLoading: false,
        isDeleteLoading: false,
        actionFailureOpt: none(),
      );
}
