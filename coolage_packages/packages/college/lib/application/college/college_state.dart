part of 'college_bloc.dart';

@freezed
class CollegeState with _$CollegeState {
  const factory CollegeState({
    @required AboutCollegeModel? aboutCollegeModel,
    @required CollegeModel? collegeModel,
    @required bool? isCollegeLoading,
    @required bool? isLoading,
    @required Option<FirebaseFailure>? failureOrSuccessOption,
    @required Option<FirebaseFailure>? collegeFailureOrSuccessOption,
    @required bool? isDeletingLink,
    @required bool? isSavingLink,
    @required Option<Either<FirebaseFailure, Unit>>? linkResultOpt,
    @required Option<Either<FirebaseFailure, Unit>>? linkDeleteResultOpt,
    @required bool? isSavingAbout,
    @required Option<Either<FirebaseFailure, Unit>>? aboutResultOpt,
    required Option<Unit> actionResultOpt,
    required Option<Either<FirebaseFailure, String>> optionResultOpt,
    required bool isAddingCollegeImage,
    required bool isAddingCollegeBanner,
    required bool isDeletingCollegeImage,
    required bool isDeletingCollegeBanner,
  }) = _CollegeState;
  factory CollegeState.initial() => CollegeState(
        aboutCollegeModel: AboutCollegeModel.empty(),
        isLoading: true,
        failureOrSuccessOption: none(),
        isCollegeLoading: false,
        collegeModel: CollegeModel.fromEmpty(),
        collegeFailureOrSuccessOption: none(),
        isSavingLink: false,
        isDeletingLink: false,
        isSavingAbout: false,
        aboutResultOpt: none(),
        linkResultOpt: none(),
        linkDeleteResultOpt: none(),
        optionResultOpt: none(),
        actionResultOpt: none(),
        isAddingCollegeImage: false,
        isAddingCollegeBanner: false,
        isDeletingCollegeImage: false,
        isDeletingCollegeBanner: false,
      );
}
