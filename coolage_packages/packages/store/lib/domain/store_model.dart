import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/domain/models/item_model.dart';

class StoreModel {
  StoreBasicDetailsModel? storeBasicDetailsModel;
  List<ItemModel>? storeItemsList;
  StoreModel({
    this.storeBasicDetailsModel,
    this.storeItemsList,
  });
}
