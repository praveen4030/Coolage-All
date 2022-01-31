import 'package:bloc/bloc.dart';
import 'package:user/domain/profile/i_profile_repo.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:user/user.dart';

part 'work_experience_event.dart';
part 'work_experience_state.dart';
part 'work_experience_bloc.freezed.dart';

@injectable
class WorkExperienceBloc
    extends Bloc<WorkExperienceEvent, WorkExperienceState> {
  final IProfileRepo iProfileRepo;

  WorkExperienceBloc(this.iProfileRepo) : super(WorkExperienceState.initial());
  @override
  Stream<WorkExperienceState> mapEventToState(
      WorkExperienceEvent event) async* {
    yield* event.map(
      addWorkExperience: (e) async* {
        yield state.copyWith(
          isLoading: true,
          actionFailureOpt: none(),
        );
        final opt = await iProfileRepo.addWorkExperience(
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
              ? "Work Experience edited successfully"
              : "Work Experience added successfully";
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
        final opt = await iProfileRepo.deleteWorkExperience(e.model);
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
