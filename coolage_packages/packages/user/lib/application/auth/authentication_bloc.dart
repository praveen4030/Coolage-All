import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:user/domain/i_auth_facade.dart';
import 'package:user/user.dart';
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
        yield state.copyWith(
          userDetailOptResult: none(),
        );
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () {
            return state.copyWith(
              userDetailOptResult: some(
                  left(FirebaseFailure.customError("User not logged in!"))),
              coolUser: CoolUser.empty(),
            );
          },
          (userDetails) => userDetails.fold(
            (docNoExists) {
              return state.copyWith(
                userDetailOptResult: some(right(false)),
                coolUser: CoolUser.empty(),
              );
            },
            (coolUser) {
              return state.copyWith(
                userDetailOptResult: some(right(true)),
                coolUser: coolUser,
              );
            },
          ),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield state.copyWith(
          coolUser: null,
          userDetailOptResult: none(),
        );
      },
      userModified: (e) async* {
        // e.user.store = state.
        final map = await e.user!.toMap();
        final newUser = CoolUser.fromMap(map);
        yield state.copyWith(
          coolUser: newUser,
        );
      },
      updateUserImage: (e) async* {
        final opt = await _authFacade.updateUserImage(e.file);

        yield opt.fold(
          (l) {
            return state.copyWith(updateProfileFailureOrSuccess: some(left(l)));
          },
          (url) {
            final user = state.coolUser!;
            user.imageUrl = url;
            return state.copyWith(coolUser: user);
          },
        );
      },
      updateUserDetails: (e) async* {
        yield state.copyWith(
          isUpdatingProfileLoading: true,
          updateProfileFailureOrSuccess: none(),
        );
        final opt = await _authFacade.updateUserDetails(
            coolUser: e.coolUser, file: e.file);
        yield opt.fold((failure) {
          return state.copyWith(
            isUpdatingProfileLoading: false,
            updateProfileFailureOrSuccess: some(left(failure)),
          );
        }, (_) {
          return state.copyWith(
            coolUser: e.coolUser,
            isUpdatingProfileLoading: false,
            updateProfileFailureOrSuccess: some(right(unit)),
          );
        });
      },
      modifyAddress: (e) async* {
        yield state.copyWith(
          isUpdatingProfileLoading: true,
          updateProfileFailureOrSuccess: none(),
        );
        final opt = await _authFacade.modifyDeliveryAddress(
            isEdit: e.isEdit,
            isDelete: e.isDelete,
            zone: e.zone,
            deliveryAddressModel: e.addressModel);
        yield opt.fold((failure) {
          return state.copyWith(
            isUpdatingProfileLoading: false,
            updateProfileFailureOrSuccess: some(left(failure)),
          );
        }, (addedAddressMap) {
          if (e.isDelete!) {
            state.coolUser!.deliveryAddressesMap![e.zone!]!
                .remove(e.addressModel!.key);
            Fluttertoast.showToast(msg: 'Address deleted successfully!');
          } else if (e.isEdit!) {
            state.coolUser!.deliveryAddressesMap![e.zone!]!
                .update(e.addressModel!.key!, (value) => e.addressModel!);
          } else {
            if (state.coolUser!.deliveryAddressesMap!.containsKey(e.zone)) {
              state.coolUser!.deliveryAddressesMap![e.zone!]!
                  .putIfAbsent(addedAddressMap.key!, () => addedAddressMap);
            } else {
              state.coolUser!.deliveryAddressesMap!.putIfAbsent(
                e.zone!,
                () => {
                  addedAddressMap.key!: addedAddressMap,
                },
              );
            }
          }

          return state.copyWith(
            isUpdatingProfileLoading: false,
            updateProfileFailureOrSuccess: some(right(unit)),
          );
        });
      },
    );
  }
}
