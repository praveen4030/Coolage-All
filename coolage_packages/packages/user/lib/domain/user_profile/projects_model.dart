part of user;

class ProjectsModel {
  String? title;
  String? field;
  String? organisation;
  Timestamp? completionDate;
  String? description;
  bool? isVisible;
  bool? isVerified;
  String? id;
  ProjectsModel({
    this.title,
    this.field,
    this.organisation,
    this.completionDate,
    this.description,
    this.isVisible,
    this.isVerified,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'field': field,
      'organisation': organisation,
      'completionDate': completionDate,
      'description': description,
      'isVisible': isVisible,
      'isVerified': isVerified,
      'id': id,
    };
  }

  factory ProjectsModel.fromMap(Map<String, dynamic> map) {
    return ProjectsModel(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      field: map['field'] != null ? map['field'] as String : null,
      organisation:
          map['organisation'] != null ? map['organisation'] as String : null,
      completionDate: map['completionDate'] != null
          ? map['completionDate'] as Timestamp
          : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      isVisible: map['isVisible'] != null ? map['isVisible'] as bool : null,
      isVerified: map['isVerified'] != null ? map['isVerified'] as bool : null,
    );
  }
  static bool noVisibleElementPresentForOtherUser(List<ProjectsModel> list) {
    if (list.isEmpty) return true;
    for (final element in list) {
      if (element.isVisible ?? false) return false;
    }
    return true;
  }
}
