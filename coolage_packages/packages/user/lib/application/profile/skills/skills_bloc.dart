import 'package:bloc/bloc.dart';
import 'package:user/domain/profile/i_profile_repo.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:user/user.dart';

part 'skills_event.dart';
part 'skills_state.dart';
part 'skills_bloc.freezed.dart';

@injectable
class SkillsBloc extends Bloc<SkillsEvent, SkillsState> {
  final IProfileRepo iProfileRepo;

  SkillsBloc(this.iProfileRepo) : super(SkillsState.initial());
  @override
  Stream<SkillsState> mapEventToState(SkillsEvent event) async* {
    yield* event.map(
      changeSkillVisibility: (e) async* {
        yield state.copyWith(
          isLoading: true,
          actionFailureOpt: none(),
        );
        final opt = await iProfileRepo.changeSkillVisibility(
          model: e.skillModel,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            actionFailureOpt: some(left(failure)),
            isLoading: false,
          );
        }, (_) {
          e.onChange();
          const message = "Updated successfully";

          return state.copyWith(
            actionFailureOpt: some(right(message)),
            isLoading: false,
          );
        });
      },
      addSkill: (e) async* {
        yield state.copyWith(
          isLoading: true,
          actionFailureOpt: none(),
        );
        final opt = await iProfileRepo.addSkill(
          skillsMap: e.skillsMap,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            actionFailureOpt: some(left(failure)),
            isLoading: false,
          );
        }, (_) {
          e.onAdd();
          const message = "Skill added successfully";
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
        final opt = await iProfileRepo.deleteSkill(e.model);
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
