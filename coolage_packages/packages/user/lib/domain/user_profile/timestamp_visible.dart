part of user;

class TimestampVisible {
  Timestamp? timestamp;
  bool? isVisible;
  TimestampVisible({
    this.timestamp,
    this.isVisible,
  });

  TimestampVisible copyWith({
    Timestamp? timestamp,
    bool? isVisible,
  }) {
    return TimestampVisible(
      timestamp: timestamp ?? this.timestamp,
      isVisible: isVisible ?? this.isVisible,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'timestamp': timestamp,
      'isVisible': isVisible,
    };
  }

  factory TimestampVisible.fromMap(Map<String, dynamic> map) {
    return TimestampVisible(
      timestamp:
          map['timestamp'] != null ? map['timestamp'] as Timestamp : null,
      isVisible: map['isVisible'] != null ? map['isVisible'] as bool : null,
    );
  }

  @override
  String toString() =>
      'TimestampVisible(timestamp: $timestamp, isVisible: $isVisible)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TimestampVisible &&
        other.timestamp == timestamp &&
        other.isVisible == isVisible;
  }

  @override
  int get hashCode => timestamp.hashCode ^ isVisible.hashCode;
}
