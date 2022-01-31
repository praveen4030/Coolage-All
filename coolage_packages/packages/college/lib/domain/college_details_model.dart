part of college;

class CollegeDetailsModel {
  List<String>? canteensList;
  List<String>? storesList;
  CollegeDetailsModel({
    this.canteensList,
    this.storesList,
  });

  CollegeDetailsModel copyWith({
    List<String>? canteensList,
    List<String>? storesList,
  }) {
    return CollegeDetailsModel(
      canteensList: canteensList ?? this.canteensList,
      storesList: storesList ?? this.storesList,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'canteensList': canteensList,
      'storesList': storesList,
    };
  }

  factory CollegeDetailsModel.fromMap(Map<String, dynamic> map) {
    return CollegeDetailsModel(
      canteensList: List<String>.from(
          (map['canteensList'] as List).map((e) => e as String)),
      storesList: List<String>.from(
          (map['storesList'] as List).map((e) => e as String)),
    );
  }

  @override
  String toString() =>
      'CollegeDetailsModel(canteensList: $canteensList, storesList: $storesList)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CollegeDetailsModel &&
        listEquals(other.canteensList, canteensList) &&
        listEquals(other.storesList, storesList);
  }

  @override
  int get hashCode => canteensList.hashCode ^ storesList.hashCode;
}
