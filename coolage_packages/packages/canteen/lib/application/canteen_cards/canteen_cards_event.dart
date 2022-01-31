part of 'canteen_cards_bloc.dart';

@freezed
abstract class CanteenCardsEvent with _$CanteenCardsEvent {
  const factory CanteenCardsEvent.canteenCards() = _CanteenCards;
}
