part of 'stores_list_bloc.dart';

@freezed
class StoresListEvent with _$StoresListEvent {
  const factory StoresListEvent.getCollegeStores({String? userCollege}) =
      _GetCollegeStores;
  const factory StoresListEvent.getCategoryStores({String? category}) =
      _GetCategoryStores;
  const factory StoresListEvent.getMoreCategoryStores({String? category}) =
      _GetMoreCategoryStores;
}
