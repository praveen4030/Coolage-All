part of user;

class DeliveryAddressModel {
  String? roomNo;
  String? addressLine;
  String? key;
  DeliveryAddressModel({
    this.roomNo,
    this.addressLine,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return {
      'roomNo': roomNo,
      'addressLine': addressLine,
      'key': key,
    };
  }

  factory DeliveryAddressModel.fromMap(Map<String, dynamic> map) {
    return DeliveryAddressModel(
      roomNo: map['roomNo'] as String,
      addressLine: map['addressLine'] as String,
      key: map['key'] as String,
    );
  }
}
