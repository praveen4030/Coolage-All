import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:coolage_merchant/domain/auth/i_auth_facade.dart';
import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:coolage_merchant/domain/user/cool_user.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthFacade _authFacade;

  AuthenticationBloc(this._authFacade) : super(AuthenticationState.initial());
  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      authCheckRequested: (e) async* {
        yield state.copyWith(isCheckingAuthState: true);

        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () {
            return state.copyWith(
              isSignedIn: false,
              isCheckingAuthState: false,
              isDetailsAvailable: false,
              canteenBasicDetailsModel: CanteenBasicDetailsModel.empty(),
            );
          },
          (userDetails) => userDetails.fold(
            (docNoExists) {
              return state.copyWith(
                isSignedIn: true,
                isDetailsAvailable: false,
                isCheckingAuthState: false,
                canteenBasicDetailsModel: CanteenBasicDetailsModel.empty(),
              );
            },
            (coolUser) {
              return state.copyWith(
                isSignedIn: true,
                coolUser: coolUser,
                canteenBasicDetailsModel: coolUser.canteenBasicDetailsModel,
                isDetailsAvailable: true,
                isCheckingAuthState: false,
              );
            },
          ),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield state.copyWith(isSignedIn: false);
      },
      userModified: (e) async* {
        // e.user.store = state.
        CanteenBasicDetailsModel canteenBasicDetailsModel =
            CanteenBasicDetailsModel.fromMap(
                e.canteenBasicDetailsModel!.toMap());
        yield state.copyWith(
          canteenBasicDetailsModel: canteenBasicDetailsModel,
        );
      },
      updateCanteenDetails: (e) async* {
        yield state.copyWith(
          isUpdatingProfileLoading: true,
          updateProfileFailureOrSuccess: none(),
        );
        final opt = await _authFacade.updateCanteenDetails(
            canteenModel: e.canteenBasicDetailsModel, file: e.file);
        yield opt.fold((failure) {
          return state.copyWith(
            isUpdatingProfileLoading: false,
            updateProfileFailureOrSuccess: some(left(failure)),
          );
        }, (model) {
          return state.copyWith(
            canteenBasicDetailsModel: model,
            isUpdatingProfileLoading: false,
            updateProfileFailureOrSuccess: some(right(unit)),
          );
        });
        yield state.copyWith(
          updateProfileFailureOrSuccess: none(),
        );
      },
    );
  }
}
