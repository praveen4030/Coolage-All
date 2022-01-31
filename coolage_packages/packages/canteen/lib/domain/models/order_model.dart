part of canteen;

class OrderModel {
  String? canteenName;
  String? canteenLocation;
  String? canteenContactNo;
  String? canteenId;
  int? totalItemsQty;
  double? totalPrice;
  String? orderId;
  String? orderComments;
  Map<String, ItemModel>? itemsMap;
  Timestamp? timestamp;
  Timestamp? orderPlacedAtTimestamp;
  Timestamp? orderAcceptedAtTimestamp;
  Timestamp? orderPreparedAtTimestamp;
  Timestamp? orderDeliveredAtTimestamp;
  bool? isDelivery;
  bool? isTakeAway;
  DeliverableZonesModel? deliverableZonesModel;
  String? deliveryAddress;
  double? orderRating;
  String? orderPlaceByUid;
  String? orderPlaceByName;
  String? orderPlacedByContactNo;
  String? orderPlacedByImage;
  OrderStatus? orderStatus;
  String? paymentId;
  String? userDeviceToken;
  int? minimumDeliveryPrice;
  OrderModel({
    this.canteenName,
    this.canteenLocation,
    this.canteenId,
    this.totalItemsQty,
    this.totalPrice,
    this.orderId,
    this.itemsMap,
    this.timestamp,
    this.orderPlacedAtTimestamp,
    this.orderAcceptedAtTimestamp,
    this.orderPreparedAtTimestamp,
    this.orderDeliveredAtTimestamp,
    this.isDelivery,
    this.deliveryAddress,
    this.orderRating,
    this.orderPlaceByUid,
    this.orderPlaceByName,
    this.orderPlacedByContactNo,
    this.orderPlacedByImage,
    this.orderStatus,
    this.paymentId,
    this.userDeviceToken,
    this.deliverableZonesModel,
    this.isTakeAway,
    this.canteenContactNo,
    this.minimumDeliveryPrice,
    this.orderComments,
  });

  bool isOngoingOrder() {
    if (orderStatus == OrderStatus.delivered ||
        orderStatus == OrderStatus.unknown ||
        orderStatus == OrderStatus.canceled) {
      return false;
    }
    return true;
  }

  double getTotalPayable() {
    double totalItemsPayable = getItemsTotalPrice();
    if (isDelivery!) {
      if (totalItemsPayable >
          deliverableZonesModel!.minimumPriceForFreeDelivery!) {
        totalItemsPayable -= deliverableZonesModel!.deliveryCharge!;
      }
      totalItemsPayable += deliverableZonesModel!.deliveryCharge!;
    }
    return totalItemsPayable;
  }

  int getItemsTotalQty() {
    int qty = 0;
    for (final model in itemsMap!.values.toList()) {
      qty += model.qty!;
    }
    return qty;
  }

  double getItemsTotalPrice() {
    double totalPrice = 0;
    for (final model in itemsMap!.values.toList()) {
      totalPrice += model.getPrice();
    }
    return totalPrice;
  }

  Map<String, dynamic> toMap() {
    final cartItemsMapping =
        itemsMap?.map((key, value) => MapEntry(key, value.toMap()));
    return {
      'canteenName': canteenName,
      'canteenLocation': canteenLocation,
      'canteenId': canteenId,
      'totalItemsQty': totalItemsQty,
      'totalPrice': totalPrice,
      'orderId': orderId,
      'itemsMap': cartItemsMapping,
      'timestamp': timestamp,
      'orderPlacedAtTimestamp': orderPlacedAtTimestamp,
      'orderAcceptedAtTimestamp': orderAcceptedAtTimestamp,
      'orderPreparedAtTimestamp': orderPreparedAtTimestamp,
      'orderDeliveredAtTimestamp': orderDeliveredAtTimestamp,
      'isDelivery': isDelivery,
      'deliveryAddress': deliveryAddress,
      'orderRating': orderRating,
      'orderPlaceByUid': orderPlaceByUid,
      'orderPlaceByName': orderPlaceByName,
      'orderPlacedByContactNo': orderPlacedByContactNo,
      'orderPlacedByImage': orderPlacedByImage,
      'orderStatus': getOrderStatusString(orderStatus!),
      'paymentId': paymentId,
      'userDeviceToken': userDeviceToken,
      'deliverableZonesModel': deliverableZonesModel?.toMap() ?? {},
      'isTakeAway': isTakeAway ?? false,
      'canteenContactNo': canteenContactNo,
      'minimumDeliveryPrice': minimumDeliveryPrice,
      'orderComments': orderComments ?? '',
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
        canteenName: map['canteenName'] as String,
        canteenLocation: map['canteenLocation'] as String,
        canteenContactNo: map['canteenContactNo'] != null
            ? map['canteenContactNo'] as String
            : '',
        canteenId: map['canteenId'] as String,
        totalItemsQty: map['totalItemsQty'] as int,
        totalPrice: double.parse(map['totalPrice'].toString()),
        orderId: map['orderId'] as String,
        itemsMap: (map['itemsMap'] as Map<String, dynamic>).map((key, value) =>
            MapEntry(key, ItemModel.fromMap(value as Map<String, dynamic>))),
        timestamp: map['timestamp'] as Timestamp,
        orderPlacedAtTimestamp: map['orderPlacedAtTimestamp'] as Timestamp,
        orderAcceptedAtTimestamp: map['orderAcceptedAtTimestamp'] as Timestamp,
        orderPreparedAtTimestamp: map['orderPreparedAtTimestamp'] as Timestamp,
        orderDeliveredAtTimestamp:
            map['orderDeliveredAtTimestamp'] as Timestamp,
        isDelivery: map['isDelivery'] as bool,
        deliveryAddress: map['deliveryAddress'] as String,
        orderRating: double.tryParse(['orderRating'].toString()),
        orderPlaceByUid: map['orderPlaceByUid'] as String,
        orderPlaceByName: map['orderPlaceByName'] as String,
        orderPlacedByContactNo: map['orderPlacedByContactNo'] as String,
        orderPlacedByImage: map['orderPlacedByImage'] as String,
        orderStatus: getOrderStatus(map['orderStatus'] as String),
        paymentId: map['paymentId'] as String,
        userDeviceToken: map['userDeviceToken'] as String,
        deliverableZonesModel: map['deliverableZonesModel'] != null
            ? DeliverableZonesModel.fromMap(
                map['deliverableZonesModel'] as Map<String, dynamic>)
            : deliverableZonesListForPreviousUpdateHandling(
                int.tryParse(map['deliveryCharges']?.toString() ?? '0')!),
        isTakeAway:
            map['isTakeAway'] != null ? map['isTakeAway'] as bool : false,
        orderComments: map['orderComments'] as String,
        minimumDeliveryPrice:
            int.tryParse(map['minimumDeliveryPrice']?.toString() ?? '0'));
  }

  static DeliverableZonesModel deliverableZonesListForPreviousUpdateHandling(
    int delivery,
  ) {
    return DeliverableZonesModel(
      zone: "NIT Jalandhar",
      deliveryCharge: delivery,
      minimumPriceForFreeDelivery: 50,
    );
  }
}
