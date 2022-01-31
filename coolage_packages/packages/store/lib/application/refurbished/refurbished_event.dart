part of 'refurbished_bloc.dart';

@freezed
class RefurbishedEvent with _$RefurbishedEvent {
  const factory RefurbishedEvent.getRefurbishedItems(
      {@required String? college}) = _GetRefurbishedItems;
  const factory RefurbishedEvent.getMoreRefurbishedItems(
      {@required String? college}) = _GetMoreRefurbishedItems;
  const factory RefurbishedEvent.addRefurbishedItem({
    @required String? college,
    @required RefurbishedModel? refurbishedModel,
  }) = _AddRefurbishedItem;
}
