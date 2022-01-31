part of user;

class StringVisible {
  String? data;
  bool? isVisible;
  StringVisible({
    this.data,
    this.isVisible,
  });

  StringVisible copyWith({
    String? data,
    bool? isVisible,
  }) {
    return StringVisible(
      data: data ?? this.data,
      isVisible: isVisible ?? this.isVisible,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data,
      'isVisible': isVisible,
    };
  }

  factory StringVisible.fromMap(Map<String, dynamic> map) {
    return StringVisible(
      data: map['data'] != null ? map['data'] as String : null,
      isVisible: map['isVisible'] != null ? map['isVisible'] as bool : null,
    );
  }

  @override
  String toString() => 'StringVisible(data: $data, isVisible: $isVisible)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StringVisible &&
        other.data == data &&
        other.isVisible == isVisible;
  }

  @override
  int get hashCode => data.hashCode ^ isVisible.hashCode;
}
