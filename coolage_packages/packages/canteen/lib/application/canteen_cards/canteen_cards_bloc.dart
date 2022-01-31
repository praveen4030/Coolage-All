import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:canteen/domain/i_canteen_card_repo.dart';
import 'package:cards/cards.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'canteen_cards_event.dart';
part 'canteen_cards_state.dart';
part 'canteen_cards_bloc.freezed.dart';

@injectable
class CanteenCardsBloc extends Bloc<CanteenCardsEvent, CanteenCardsState> {
  final ICanteenCardsRepository iHomeInitialRepository;

  CanteenCardsBloc(this.iHomeInitialRepository)
      : super(CanteenCardsState.initial());

  @override
  Stream<CanteenCardsState> mapEventToState(
    CanteenCardsEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      canteenCards: (e) async* {
        yield state.copyWith(
          isCanteenCardsLoading: true,
          canteenFailureOrSuccessOption: none(),
        );
        final canteenCardsListOption =
            await iHomeInitialRepository.getCanteenCards();
        yield canteenCardsListOption.fold(
            (failure) => state.copyWith(
                  canteenFailureOrSuccessOption: some(failure),
                  isCanteenCardsLoading: false,
                ),
            (list) => state.copyWith(
                  canteenCardsList: list,
                  canteenFailureOrSuccessOption: none(),
                  isCanteenCardsLoading: false,
                ));
      },
    );
  }
}
