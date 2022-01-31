import 'package:bloc/bloc.dart';
import 'package:user/domain/profile/i_profile_repo.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:user/user.dart';

part 'projects_event.dart';
part 'projects_state.dart';
part 'projects_bloc.freezed.dart';

@injectable
class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  final IProfileRepo iProfileRepo;

  ProjectsBloc(this.iProfileRepo) : super(ProjectsState.initial());
  @override
  Stream<ProjectsState> mapEventToState(ProjectsEvent event) async* {
    yield* event.map(
      addProject: (e) async* {
        yield state.copyWith(
          isLoading: true,
          actionFailureOpt: none(),
        );
        final opt = await iProfileRepo.addProject(
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
              ? "Project edited successfully"
              : "Project added successfully";
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
        final opt = await iProfileRepo.deleteProject(e.model);
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
