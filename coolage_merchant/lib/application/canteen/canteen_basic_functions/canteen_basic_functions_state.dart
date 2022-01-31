part of 'canteen_basic_functions_bloc.dart';

@freezed
class CanteenBasicFunctionsState with _$CanteenBasicFunctionsState {
  const factory CanteenBasicFunctionsState({
    @required
        Option<Either<FirebaseFailure, Unit>>? deliveryStatusFailureOrSuccess,
    @required
        Option<Either<FirebaseFailure, Unit>>? openStatusFailureOrSuccess,
  }) = _CanteenBasicFunctionsState;

  factory CanteenBasicFunctionsState.initial() => CanteenBasicFunctionsState(
        deliveryStatusFailureOrSuccess: none(),
        openStatusFailureOrSuccess : none(),
      );
}
