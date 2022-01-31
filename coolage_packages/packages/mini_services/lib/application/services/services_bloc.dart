import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_services/domain/i_services_repo.dart';
import 'package:mini_services/mini_services.dart';

part 'services_event.dart';
part 'services_state.dart';
part 'services_bloc.freezed.dart';

@injectable
class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  final IServicesRepo iServicesRepo;
  ServicesBloc(this.iServicesRepo) : super(ServicesState.initial());

  @override
  Stream<ServicesState> mapEventToState(
    ServicesEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getServiceProviders: (e) async* {
        yield state.copyWith(
          isLoading: true,
          failureOrSuccessOption: none(),
        );
        if (e.userCollege != null && e.category != null) {
          final opt = await iServicesRepo.getServiceProviders(
              e.userCollege!, e.category!);
          yield opt.fold((failure) {
            return state.copyWith(
              failureOrSuccessOption: some(failure),
              isLoading: false,
            );
          }, (list) {
            final Map<String, List<ServiceProviderModel>> map =
                state.serviceProvidersMap!;
            map.putIfAbsent(e.category!, () => list);
            return state.copyWith(
              failureOrSuccessOption: none(),
              isLoading: false,
              serviceProvidersMap: map,
            );
          });
        } else {
          yield state.copyWith(
            isLoading: false,
            failureOrSuccessOption: some(
              FirebaseFailure.customError('Something went wrong!'),
            ),
          );
        }
      },
      addServiceProvider: (e) async* {
        //if coming service provider has empty docId that means adding new itherwise edit
        yield state.copyWith(
          isAddingServiceProvider: true,
          deleteServiceResultOpt: none(),
          addServiceResultOpt: none(),
        );
        final opt = await iServicesRepo.addServiceProvider(e.userCollege!,
            serviceProviderModel: e.serviceProviderModel!, file: e.file);
        yield opt.fold((failure) {
          return state.copyWith(
            addServiceResultOpt: some(left(failure)),
            isAddingServiceProvider: false,
          );
        }, (model) {
          if (e.index != null) {
            //edit
            state.serviceProvidersMap![e.serviceProviderModel!.category]!
              ..removeAt(e.index!)
              ..insert(e.index!, model);
          } else {
            //adding new
            if (state.serviceProvidersMap!
                .containsKey(e.serviceProviderModel!.category!)) {
              state.serviceProvidersMap![e.serviceProviderModel!.category]!
                  .add(model);
            } else {
              state.serviceProvidersMap!.putIfAbsent(
                  e.serviceProviderModel!.category!, () => [model]);
            }
          }
          return state.copyWith(
            addServiceResultOpt: some(right(unit)),
            isAddingServiceProvider: false,
          );
        });
      },
      deleteServiceProvider: (e) async* {
        yield state.copyWith(
          isDeletingServiceProvider: true,
          deleteServiceResultOpt: none(),
          addServiceResultOpt: none(),
        );
        final opt = await iServicesRepo.deleteServiceProvider(
          e.userCollege!,
          e.serviceProviderModel!,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            deleteServiceResultOpt: some(left(failure)),
            isDeletingServiceProvider: false,
          );
        }, (model) {
          state.serviceProvidersMap![e.serviceProviderModel!.category]!
              .removeAt(e.index!);

          return state.copyWith(
            deleteServiceResultOpt: some(right(unit)),
            isDeletingServiceProvider: false,
          );
        });
      },
    );
  }
}
