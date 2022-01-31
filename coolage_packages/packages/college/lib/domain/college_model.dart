part of college;

class CollegeModel {
  final List<String>? featuresList;
  final List<Cards>? homeCardsList;
  final List<String>? miniServices;
  final String? college;
  final String? state;
  final String? city;
  List<String>? departments;
  List<String>? groups;
  Map<String, List<String>>? programmes;
  List<String>? designations;
  CollegeModel({
    this.featuresList,
    this.homeCardsList,
    this.miniServices,
    this.college,
    this.state,
    this.city,
    this.programmes,
    this.departments,
    this.designations,
    this.groups,
  });
  factory CollegeModel.fromEmpty() {
    return CollegeModel(
      featuresList: [],
      homeCardsList: [],
      miniServices: [],
      programmes: {},
      departments: [],
      designations: [],
      groups: [],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'featuresList': featuresList,
      'homeCardsList': homeCardsList,
      'miniServices': miniServices,
      'city': city,
      'state': state,
      'programmes': programmes,
      'departments': departments,
      'designations': designations,
      'groups': groups,
    };
  }

  factory CollegeModel.fromMap(Map<String, dynamic> map) {
    return CollegeModel(
        designations: map['designations'] == null
            ? []
            : (map['designations'] as List).map((e) => e as String).toList(),
        departments: map['departments'] != null
            ? (map['departments'] as List).map((e) => e as String).toList()
            : [],
        groups: map['groups'] != null
            ? (map['groups'] as List).map((e) => e as String).toList()
            : [],
        programmes: map['programmes'] == null
            ? {}
            : (map['programmes'] as Map<String, dynamic>).map(
                (key, value) => MapEntry(
                  key,
                  (value as List).map((e) => e as String).toList(),
                ),
              ),
        city: map['city'] as String,
        state: map['state'] as String,
        miniServices: map['miniServices'] != null
            ? (map['miniServices'] as List).map((e) => e as String).toList()
            : [],
        featuresList: map['featuresList'] != null
            ? List<String>.from(
                (map['featuresList'] as List).map((e) => e as String))
            : [],
        homeCardsList: map['homeCardsList'] == null
            ? []
            : List<Cards>.from((map['homeCardsList'] as Map<String, dynamic>)
                .map(
                  (key, value) => MapEntry(
                    key,
                    Cards.fromMap(
                      value as Map<String, dynamic>,
                      key,
                    ),
                  ),
                )
                .values));
  }
}
