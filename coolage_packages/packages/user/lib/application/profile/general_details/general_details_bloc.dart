import 'package:bloc/bloc.dart';
import 'package:user/domain/profile/i_profile_repo.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:user/user.dart';

part 'general_details_event.dart';
part 'general_details_state.dart';
part 'general_details_bloc.freezed.dart';

@injectable
class GeneralDetailsBloc
    extends Bloc<GeneralDetailsEvent, GeneralDetailsState> {
  final IProfileRepo iProfileRepo;

  GeneralDetailsBloc(this.iProfileRepo) : super(GeneralDetailsState.initial());
  @override
  Stream<GeneralDetailsState> mapEventToState(
      GeneralDetailsEvent event) async* {
    yield* event.map(
      updateGeneralDetails: (e) async* {
        yield state.copyWith(
          isLoading: true,
          actionFailureOpt: none(),
        );
        final opt = await iProfileRepo.updateGeneralDetails(
          e.model,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            actionFailureOpt: some(left(failure)),
            isLoading: false,
          );
        }, (model) {
          e.onUpdate();
          const message = "Details Updated successfully";
          return state.copyWith(
            actionFailureOpt: some(right(message)),
            isLoading: false,
          );
        });
      },
    );
  }
}
