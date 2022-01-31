import 'dart:convert';

import 'package:core/core.dart';
import 'package:hive/hive.dart';

part 'category_price_model.g.dart';

@HiveType(typeId: HiveConstants.categoryPriceModel)
class CategoryPriceModel {
  @HiveField(0)
  String? category;
  @HiveField(1)
  int? qty;
  @HiveField(2)
  double? price;
  CategoryPriceModel({
    this.category,
    this.price,
    this.qty,
  });

  Map<String, dynamic> toMap() {
    return {
      'category': category,
      'price': price,
      'qty': qty,
    };
  }

  factory CategoryPriceModel.fromMap(Map<String, dynamic> map) {
    return CategoryPriceModel(
      category: map['category'] as String,
      price: double.tryParse(map['price']?.toString() ?? '0'),
      qty: int.tryParse(map['qty']?.toString() ?? '0'),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryPriceModel &&
        other.category == category &&
        other.qty == qty &&
        other.price == price;
  }

  @override
  int get hashCode => category.hashCode ^ qty.hashCode ^ price.hashCode;

  @override
  String toString() =>
      'CategoryPriceModel(category: $category, qty: $qty, price: $price)';
}
