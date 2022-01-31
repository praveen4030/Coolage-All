part of 'general_details_bloc.dart';

@freezed
class GeneralDetailsState with _$GeneralDetailsState {
  const factory GeneralDetailsState({
    required bool isLoading,
    required Option<Either<FirebaseFailure, String>> actionFailureOpt,
  }) = _GeneralDetailsState;
  factory GeneralDetailsState.initial() => GeneralDetailsState(
        isLoading: false,
        actionFailureOpt: none(),
      );
}
