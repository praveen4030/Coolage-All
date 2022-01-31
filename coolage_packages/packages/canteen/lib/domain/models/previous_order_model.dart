part of canteen;

class PreviousOrderModel {
  String? name;
  double? totalPrice;
  double? qty;
  List<ItemModel>? cartItemsList;
  String? location;
  Timestamp? timestamp;
  String? orderId;
  String? deliveredAddress;
  String? canteenId;
  PreviousOrderModel({
    this.name,
    this.totalPrice,
    this.qty,
    this.cartItemsList,
    this.location,
    this.timestamp,
    this.orderId,
    this.deliveredAddress,
    this.canteenId,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'totalPrice': totalPrice,
      'qty': qty,
      'cartItemsList': cartItemsList?.map((x) => x.toMap()).toList(),
      'location': location,
      'timestamp': timestamp,
      'orderId': orderId,
      'deliveredAddress': deliveredAddress,
      'canteenId': canteenId,
    };
  }

  factory PreviousOrderModel.fromMap(Map<String, dynamic> map) {
    return PreviousOrderModel(
      name: map['name'] as String,
      totalPrice: double.parse(map['totalPrice'].toString()),
      qty: map['qty'] as double,
      cartItemsList: List<ItemModel>.from((map['cartItemsList'] as List)
          .map((x) => ItemModel.fromMap(x as Map<String, dynamic>))),
      location: map['location'] as String,
      timestamp: map['timestamp'] as Timestamp,
      orderId: map['orderId'] as String,
      deliveredAddress: map['deliveredAddress'] as String,
      canteenId: map['canteenId'] as String,
    );
  }

  @override
  String toString() {
    return 'PreviousOrderModel(name: $name, totalPrice: $totalPrice, qty: $qty, cartItemsList: $cartItemsList, location: $location, timestamp: $timestamp, orderId: $orderId, deliveredAddress: $deliveredAddress, canteenId: $canteenId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PreviousOrderModel &&
        other.name == name &&
        other.totalPrice == totalPrice &&
        other.qty == qty &&
        listEquals(other.cartItemsList, cartItemsList) &&
        other.location == location &&
        other.timestamp == timestamp &&
        other.orderId == orderId &&
        other.deliveredAddress == deliveredAddress &&
        other.canteenId == canteenId;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        totalPrice.hashCode ^
        qty.hashCode ^
        cartItemsList.hashCode ^
        location.hashCode ^
        timestamp.hashCode ^
        orderId.hashCode ^
        deliveredAddress.hashCode ^
        canteenId.hashCode;
  }
}
