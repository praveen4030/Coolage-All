part of user;

class EducationDetailsModel {
  String? degree;
  String? stream;
  String? institute;
  String? performance;
  Timestamp? completionDate;
  bool? isVisible;
  bool? isVerified;
  String? id;

  EducationDetailsModel({
    this.degree,
    this.stream,
    this.institute,
    this.performance,
    this.completionDate,
    this.isVisible,
    this.isVerified,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'degree': degree,
      'stream': stream,
      'institute': institute,
      'performance': performance,
      'completionDate': completionDate,
      'isVisible': isVisible,
      'isVerified': isVerified,
      'id': id,
    };
  }

  factory EducationDetailsModel.fromMap(Map<String, dynamic> map) {
    return EducationDetailsModel(
      degree: map['degree'] != null ? map['degree'] as String : null,
      stream: map['stream'] != null ? map['stream'] as String : null,
      institute: map['institute'] != null ? map['institute'] as String : null,
      performance:
          map['performance'] != null ? map['performance'] as String : null,
      completionDate: map['completionDate'] != null
          ? map['completionDate'] as Timestamp
          : null,
      isVisible: map['isVisible'] != null ? map['isVisible'] as bool : null,
      isVerified: map['isVerified'] != null ? map['isVerified'] as bool : null,
      id: map['id'] != null ? map['id'] as String : null,
    );
  }
  static bool noVisibleElementPresentForOtherUser(
      List<EducationDetailsModel> list) {
    if (list.isEmpty) return true;
    for (final element in list) {
      if (element.isVisible ?? false) return false;
    }
    return true;
  }
}
