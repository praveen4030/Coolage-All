import 'package:bloc/bloc.dart';
import 'package:user/domain/profile/i_profile_repo.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:user/user.dart';

part 'education_details_event.dart';
part 'education_details_state.dart';
part 'education_details_bloc.freezed.dart';

@injectable
class EducationDetailsBloc
    extends Bloc<EducationDetailsEvent, EducationDetailsState> {
  final IProfileRepo iProfileRepo;

  EducationDetailsBloc(this.iProfileRepo)
      : super(EducationDetailsState.initial());
  @override
  Stream<EducationDetailsState> mapEventToState(
      EducationDetailsEvent event) async* {
    yield* event.map(
      addEducationDetails: (e) async* {
        yield state.copyWith(
          isLoading: true,
          actionFailureOpt: none(),
        );
        final opt = await iProfileRepo.addEducationDetails(
          model: e.model,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            actionFailureOpt: some(left(failure)),
            isLoading: false,
          );
        }, (model) {
          e.onAdd(model);
          final message = e.model != null
              ? "Education Detail edited successfully"
              : "Education Detail added successfully";
          return state.copyWith(
            actionFailureOpt: some(right(message)),
            isLoading: false,
          );
        });
      },
      delete: (e) async* {
        yield state.copyWith(
          isDeleteLoading: true,
          actionFailureOpt: none(),
        );
        final opt = await iProfileRepo.deleteEducationDetail(e.model);
        yield opt.fold((failure) {
          return state.copyWith(
            actionFailureOpt: some(left(failure)),
            isDeleteLoading: false,
          );
        }, (_) {
          e.onDelete();
          Fluttertoast.showToast(msg: "Deleted successfully");

          return state.copyWith(
            actionFailureOpt: some(right('Deleted successfully!')),
            isDeleteLoading: false,
          );
        });
      },
    );
  }
}
