import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:user/domain/profile/i_profile_repo.dart';
import 'package:user/user.dart';

part 'achievements_event.dart';
part 'achievements_state.dart';
part 'achievements_bloc.freezed.dart';

@injectable
class AchievementsBloc extends Bloc<AchievementsEvent, AchievementsState> {
  final IProfileRepo iProfileRepo;
  AchievementsBloc(this.iProfileRepo) : super(AchievementsState.initial());
  @override
  Stream<AchievementsState> mapEventToState(AchievementsEvent event) async* {
    yield* event.map(
      addAchievement: (e) async* {
        yield state.copyWith(
          isLoading: true,
          actionFailureOpt: none(),
        );
        final opt = await iProfileRepo.addAchievements(
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
              ? "Achievement edited successfully"
              : "Achievement added successfully";
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
        final opt = await iProfileRepo.deleteAchievement(e.model);
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
