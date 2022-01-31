import 'dart:convert';

import 'package:canteen/domain/models/category_price_model.dart';
import 'package:core/core.dart';
import 'package:hive/hive.dart';
part 'item_model.g.dart';

@HiveType(typeId: HiveConstants.itemModel)
class ItemModel {
  @HiveField(0)
  String? image;
  @HiveField(1)
  String? itemName;
  @HiveField(2)
  double? price;
  @HiveField(3)
  String? subtitle;
  @HiveField(4)
  String? desc;
  @HiveField(5)
  int? qty;
  @HiveField(6)
  String? itemId;
  @HiveField(7)
  String? category;
  @HiveField(8)
  bool? isAvailable;
  @HiveField(9)
  bool? isVeg;
  @HiveField(10)
  List<CategoryPriceModel>? categoryPrices;
  ItemModel({
    this.image,
    this.itemName,
    this.price,
    this.subtitle,
    this.desc,
    this.qty,
    this.itemId,
    this.category,
    this.isAvailable,
    this.isVeg,
    this.categoryPrices,
  });

  int getQty() {
    if (categoryPrices!.isEmpty) {
      return qty!;
    } else {
      int checkQty = 0;
      for (final model in categoryPrices!) {
        checkQty += model.qty!;
      }
      return checkQty;
    }
  }

  double getPrice() {
    if (categoryPrices!.isEmpty) {
      return price! * qty!;
    } else {
      double price = 0;
      for (final model in categoryPrices!) {
        price += model.qty! * model.price!;
      }
      return price;
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'itemName': itemName,
      'price': price,
      'subtitle': subtitle,
      'desc': desc,
      'qty': qty,
      'itemId': itemId,
      'category': category,
      'isAvailable': isAvailable ?? false,
      'isVeg': isVeg,
      'categoryPrices': categoryPrices?.map((e) => e.toMap()).toList(),
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      image: map['image'] as String,
      itemName: map['itemName'] as String,
      price: double.tryParse(map['price']?.toString() ?? '0'),
      subtitle: map['subtitle'] as String,
      desc: map['desc'] != null ? map['desc'] as String : '',
      qty: int.tryParse(map['qty']?.toString() ?? '0'),
      itemId: map['itemId'] as String,
      category: map['category'] as String,
      isAvailable: (map['isAvailable'] ?? false) as bool,
      categoryPrices: ((map['categoryPrices'] ?? []) as List)
          .map((e) => CategoryPriceModel.fromMap(e as Map<String, dynamic>))
          .toList(),
      isVeg: (map['isVeg'] ?? true) as bool,
    );
  }
}
