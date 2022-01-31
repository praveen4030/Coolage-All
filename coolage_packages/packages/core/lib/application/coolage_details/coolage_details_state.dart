part of 'coolage_details_bloc.dart';

@freezed
class CoolageDetailsState with _$CoolageDetailsState {
  const factory CoolageDetailsState({
    @required CoolageDetailsModel? coolageDetailsModel,
    required bool isLoading,
    required Option<Unit> actionResultOpt,
  }) = _CoolageDetailsState;
  factory CoolageDetailsState.initial() => CoolageDetailsState(
        coolageDetailsModel: CoolageDetailsModel.empty(),
        isLoading: false,
        actionResultOpt: none(),
      );
}
