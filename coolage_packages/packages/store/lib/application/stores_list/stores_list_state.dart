part of 'stores_list_bloc.dart';

@freezed
class StoresListState with _$StoresListState {
  const factory StoresListState({
    @required bool? isCategoryStoresLoading,
    @required bool? isAddingMoreCategoryStores,
    @required bool? hasMoreThisCategoryStores,
    @required bool? isCollegeStoresLoading,
    @required Option<FirebaseFailure>? collegeStoresListFailureOrSuccess,
    @required Option<FirebaseFailure>? categoryStoresFailureOrSuccess,
    @required List<StoreBasicDetailsModel>? collegeStoresList,
    //category is the key here
    @required Map<String, List<StoreBasicDetailsModel>>? categoryStoresMap,
  }) = _StoresListState;
  factory StoresListState.initial() => StoresListState(
        isCategoryStoresLoading: false,
        isAddingMoreCategoryStores: false,
        hasMoreThisCategoryStores: false,
        isCollegeStoresLoading: false,
        collegeStoresList: [],
        categoryStoresMap: {},
        collegeStoresListFailureOrSuccess: none(),
        categoryStoresFailureOrSuccess: none(),
      );
}
