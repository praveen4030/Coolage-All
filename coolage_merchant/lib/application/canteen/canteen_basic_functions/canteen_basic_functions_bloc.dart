import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/i_canteen_basic_repo.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'canteen_basic_functions_event.dart';
part 'canteen_basic_functions_state.dart';
part 'canteen_basic_functions_bloc.freezed.dart';

@injectable
class CanteenBasicFunctionsBloc
    extends Bloc<CanteenBasicFunctionsEvent, CanteenBasicFunctionsState> {
  final ICanteenBasicRepo iCanteenBasicRepo;
  CanteenBasicFunctionsBloc(this.iCanteenBasicRepo)
      : super(CanteenBasicFunctionsState.initial());

  @override
  Stream<CanteenBasicFunctionsState> mapEventToState(
    CanteenBasicFunctionsEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      switchOpenStatus: (e) async* {
        yield state.copyWith(
          openStatusFailureOrSuccess: none(),
          deliveryStatusFailureOrSuccess: none(),
        );
        final opt = await iCanteenBasicRepo.switchCanteenOpenStatus(
            e.canteenId, e.isOpen);
        yield state.copyWith(
          openStatusFailureOrSuccess: optionOf(opt),
        );
      },
      switchDeliveryStatus: (e) async* {
        yield state.copyWith(
          deliveryStatusFailureOrSuccess: none(),
          openStatusFailureOrSuccess: none(),
        );
        final opt = await iCanteenBasicRepo.switchCanteenDeliveryStatus(
            e.canteenId, e.isDelivery);
        yield state.copyWith(
          deliveryStatusFailureOrSuccess: optionOf(opt),
        );
      },
    );
  }
}
