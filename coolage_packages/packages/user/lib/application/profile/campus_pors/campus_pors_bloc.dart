import 'package:bloc/bloc.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/domain/profile/i_profile_repo.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:user/user.dart';

part 'campus_pors_event.dart';
part 'campus_pors_state.dart';
part 'campus_pors_bloc.freezed.dart';

@injectable
class CampusPorsBloc extends Bloc<CampusPorsEvent, CampusPorsState> {
  final IProfileRepo iProfileRepo;

  CampusPorsBloc(this.iProfileRepo) : super(CampusPorsState.initial());
  @override
  Stream<CampusPorsState> mapEventToState(CampusPorsEvent event) async* {
    yield* event.map(
      addCampusPor: (e) async* {
        yield state.copyWith(
          isLoading: true,
          actionFailureOpt: none(),
        );
        final opt = await iProfileRepo.addCampusPor(
          model: e.model,
          groupsList: getGroupsList(e.model!),
        );
        yield opt.fold((failure) {
          return state.copyWith(
            actionFailureOpt: some(left(failure)),
            isLoading: false,
          );
        }, (model) {
          e.onAdd(model);
          final message = e.model != null
              ? "Campus POR edited successfully"
              : "Campus POR added successfully";
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
        final opt = await iProfileRepo.deleteCampusPor(e.model);
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

  List<String> getGroupsList(CampusPorsModel currentCampusPors) {
    final user = Getters.getCurrentUser(CoreGetters.getContext);
    final List<String> groupsList = [];
    final campusPorsList = List<CampusPorsModel>.from(
        user.studentProfileModel?.campusPorsModel?.values.toList() ?? []);
    for (final model in campusPorsList) {
      if (model.organisation == null) {
        continue;
      }
      if (currentCampusPors.id == model.id) {
        continue;
      }
      if (!groupsList.contains(model.organisation!)) {
        groupsList.add(model.organisation!);
      }
    }
    if (!groupsList.contains(currentCampusPors.organisation)) {
      groupsList.add(currentCampusPors.organisation!);
    }
    return groupsList;
  }
}
