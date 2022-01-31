part of canteen;

class CanteenModel {
  CanteenBasicDetailsModel? canteenBasicDetailsModel;
  List<ItemModel>? menuItemsList;
  CanteenModel({
    this.canteenBasicDetailsModel,
    this.menuItemsList,
  });

  CanteenModel copyWith({
    CanteenBasicDetailsModel? canteenBasicDetailsModel,
    List<ItemModel>? menuItemsList,
  }) {
    return CanteenModel(
      canteenBasicDetailsModel:
          canteenBasicDetailsModel ?? this.canteenBasicDetailsModel,
      menuItemsList: menuItemsList ?? this.menuItemsList,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'canteenBasicDetailsModel': canteenBasicDetailsModel?.toMap(),
      'menuItemsList': menuItemsList?.map((x) => x.toMap()).toList(),
    };
  }

  factory CanteenModel.fromMap(Map<String, dynamic> map) {
    return CanteenModel(
      canteenBasicDetailsModel: CanteenBasicDetailsModel.fromMap(
          map['canteenBasicDetailsModel'] as Map<String, dynamic>),
      menuItemsList: List<ItemModel>.from((map['menuItemsList'] as List)
          .map((x) => ItemModel.fromMap(x as Map<String, dynamic>))),
    );
  }

  @override
  String toString() =>
      'CanteenModel(canteenBasicDetailsModel: $canteenBasicDetailsModel, menuItemsList: $menuItemsList)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CanteenModel &&
        other.canteenBasicDetailsModel == canteenBasicDetailsModel &&
        listEquals(other.menuItemsList, menuItemsList);
  }

  @override
  int get hashCode =>
      canteenBasicDetailsModel.hashCode ^ menuItemsList.hashCode;
}
