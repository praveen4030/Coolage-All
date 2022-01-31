import 'dart:convert';

class CategoryPriceModel {
  String? category;
  int? qty;
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
