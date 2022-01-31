part of 'languages_bloc.dart';

@freezed
class LanguagesState with _$LanguagesState {
  const factory LanguagesState({
    required bool isLoading,
    required bool isDeleteLoading,
    required bool isVisibilityLoading,
    required Option<Either<FirebaseFailure, String>> actionFailureOpt,
  }) = _LanguagesState;
  factory LanguagesState.initial() => LanguagesState(
        isLoading: false,
        isVisibilityLoading: false,
        isDeleteLoading: false,
        actionFailureOpt: none(),
      );
}
