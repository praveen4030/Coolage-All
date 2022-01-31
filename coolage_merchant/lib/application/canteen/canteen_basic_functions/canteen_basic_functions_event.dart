part of 'canteen_basic_functions_bloc.dart';

@freezed
class CanteenBasicFunctionsEvent with _$CanteenBasicFunctionsEvent {
  const factory CanteenBasicFunctionsEvent.switchDeliveryStatus(
      bool isDelivery, String canteenId) = _SwitchDeliveryStatus;
  const factory CanteenBasicFunctionsEvent.switchOpenStatus(
      bool isOpen, String canteenId) = _SwitchOpenStatus;
}
