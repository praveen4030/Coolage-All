part of user;

class AddressModel {
  String? addressLine1;
  String? addressLine2;
  bool? isVisible;
  AddressModel({
    this.addressLine1,
    this.addressLine2,
    this.isVisible,
  });

  AddressModel copyWith({
    String? addressLine1,
    String? addressLine2,
    bool? isVisible,
  }) {
    return AddressModel(
      addressLine1: addressLine1 ?? this.addressLine1,
      addressLine2: addressLine2 ?? this.addressLine2,
      isVisible: isVisible ?? this.isVisible,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'addressLine1': addressLine1,
      'addressLine2': addressLine2,
      'isVisible': isVisible,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      addressLine1:
          map['addressLine1'] != null ? map['addressLine1'] as String : null,
      addressLine2:
          map['addressLine2'] != null ? map['addressLine2'] as String : null,
      isVisible: map['isVisible'] != null ? map['isVisible'] as bool : null,
    );
  }

  @override
  String toString() =>
      'AddressModel(addressLine1: $addressLine1, addressLine2: $addressLine2, isVisible: $isVisible)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AddressModel &&
        other.addressLine1 == addressLine1 &&
        other.addressLine2 == addressLine2 &&
        other.isVisible == isVisible;
  }

  @override
  int get hashCode =>
      addressLine1.hashCode ^ addressLine2.hashCode ^ isVisible.hashCode;
}
