part of core;

class OrderTncModel {
  String? title;
  List<String>? pointsList;
  OrderTncModel({
    this.title,
    this.pointsList,
  });

  factory OrderTncModel.empty() {
    return OrderTncModel(
      title: "",
      pointsList: [],
    );
  }

  OrderTncModel copyWith({
    String? title,
    List<String>? pointsList,
  }) {
    return OrderTncModel(
      title: title ?? this.title,
      pointsList: pointsList ?? this.pointsList,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'pointsList': pointsList,
    };
  }

  factory OrderTncModel.fromMap(Map<String, dynamic> map) {
    return OrderTncModel(
      title: map['title'] as String,
      pointsList: List<String>.from(
          (map['pointsList'] as List).map((e) => e as String)),
    );
  }

  @override
  String toString() => 'OrderTncModel(title: $title, pointsList: $pointsList)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderTncModel &&
        other.title == title &&
        listEquals(other.pointsList, pointsList);
  }

  @override
  int get hashCode => title.hashCode ^ pointsList.hashCode;
}
