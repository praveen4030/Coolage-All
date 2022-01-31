import 'dart:convert';

class OngoingOrdersCountModel {
  int? pendingOrdersCount;
  int? preparingOrdersCount;
  int? preparedOrdersCount;
  int? deliveringOrdersCount;
  OngoingOrdersCountModel({
    this.pendingOrdersCount,
    this.preparingOrdersCount,
    this.preparedOrdersCount,
    this.deliveringOrdersCount,
  });
  factory OngoingOrdersCountModel.empty() {
    return OngoingOrdersCountModel(
      pendingOrdersCount: 0,
      preparedOrdersCount: 0,
      preparingOrdersCount: 0,
      deliveringOrdersCount: 0,
    );
  }

  OngoingOrdersCountModel copyWith({
    int? pendingOrdersCount,
    int? preparingOrdersCount,
    int? preparedOrdersCount,
    int? deliveringOrdersCount,
  }) {
    return OngoingOrdersCountModel(
      pendingOrdersCount: pendingOrdersCount ?? this.pendingOrdersCount,
      preparingOrdersCount: preparingOrdersCount ?? this.preparingOrdersCount,
      preparedOrdersCount: preparedOrdersCount ?? this.preparedOrdersCount,
      deliveringOrdersCount:
          deliveringOrdersCount ?? this.deliveringOrdersCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pendingOrdersCount': pendingOrdersCount,
      'preparingOrdersCount': preparingOrdersCount,
      'preparedOrdersCount': preparedOrdersCount,
      'deliveringOrdersCount': deliveringOrdersCount,
    };
  }

  factory OngoingOrdersCountModel.fromMap(Map<String, dynamic> map) {
    return OngoingOrdersCountModel(
      pendingOrdersCount: map['pendingOrdersCount'] as int,
      preparingOrdersCount: map['preparingOrdersCount'] as int,
      preparedOrdersCount: map['preparedOrdersCount'] as int,
      deliveringOrdersCount: map['deliveringOrdersCount'] as int,
    );
  }

  @override
  String toString() {
    return 'OngoingOrdersCountModel(pendingOrdersCount: $pendingOrdersCount, preparingOrdersCount: $preparingOrdersCount, preparedOrdersCount: $preparedOrdersCount, deliveringOrdersCount: $deliveringOrdersCount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OngoingOrdersCountModel &&
        other.pendingOrdersCount == pendingOrdersCount &&
        other.preparingOrdersCount == preparingOrdersCount &&
        other.preparedOrdersCount == preparedOrdersCount &&
        other.deliveringOrdersCount == deliveringOrdersCount;
  }

  @override
  int get hashCode {
    return pendingOrdersCount.hashCode ^
        preparingOrdersCount.hashCode ^
        preparedOrdersCount.hashCode ^
        deliveringOrdersCount.hashCode;
  }
}
