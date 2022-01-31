part of 'store_details_bloc.dart';

@freezed
class StoreDetailsEvent with _$StoreDetailsEvent {
  const factory StoreDetailsEvent.getCollegeStores(String college) =
      _GetCollegeStores;
  const factory StoreDetailsEvent.getStoreProductsList(String storeId) =
      _GetStoreProductsList;
  const factory StoreDetailsEvent.addToCart({
    bool? isIncreased,
    List<ItemModel>? storeItems,
    StoreBasicDetailsModel? storeBasicDetailsModel,
  }) = _AddToCart;
}
