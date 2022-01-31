import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:user/domain/profile/i_profile_repo.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:user/user.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';
part 'user_details_bloc.freezed.dart';

@injectable
class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  final IProfileRepo iProfileRepo;

  UserDetailsBloc(this.iProfileRepo) : super(UserDetailsState.initial());
  @override
  Stream<UserDetailsState> mapEventToState(UserDetailsEvent event) async* {
    yield* event.map(
      updateUserDetails: (e) async* {
        yield state.copyWith(
          isLoading: true,
          actionFailureOpt: none(),
        );
        final opt = await iProfileRepo.updateProfileDetails(
          e.model,
          file: e.file,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            actionFailureOpt: some(left(failure)),
            isLoading: false,
          );
        }, (model) {
          e.onUpdate(model);
          const message = "Details Updated successfully";
          return state.copyWith(
            actionFailureOpt: some(right(message)),
            isLoading: false,
          );
        });
      },
      setCurrentUserDetails: (e) async* {
        yield state.copyWith(
          coolUser: e.model,
          isCurrentUser: e.isCurrentUser,
        );
      },
    );
  }
}
