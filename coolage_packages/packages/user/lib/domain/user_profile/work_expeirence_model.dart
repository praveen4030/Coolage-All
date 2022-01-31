part of user;

class WorkExperienceModel {
  String? title;
  String? type;
  String? organisation;
  Timestamp? durationFrom;
  Timestamp? durationTill;
  String? description;
  bool? isVisible;
  bool? isTillPresent;

  bool? isVerified;
  String? id;

  WorkExperienceModel({
    this.title,
    this.type,
    this.organisation,
    this.durationFrom,
    this.durationTill,
    this.description,
    this.isVisible,
    this.isVerified,
    this.id,
    this.isTillPresent,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'type': type,
      'organisation': organisation,
      'durationFrom': durationFrom,
      'durationTill': durationTill,
      'description': description,
      'isVisible': isVisible,
      'isVerified': isVerified,
      'id': id,
      'isTillPresent': isTillPresent,
    };
  }

  factory WorkExperienceModel.fromMap(Map<String, dynamic> map) {
    return WorkExperienceModel(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      organisation:
          map['organisation'] != null ? map['organisation'] as String : null,
      durationFrom:
          map['durationFrom'] != null ? map['durationFrom'] as Timestamp : null,
      durationTill:
          map['durationTill'] != null ? map['durationTill'] as Timestamp : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      isVisible: map['isVisible'] != null ? map['isVisible'] as bool : null,
      isVerified: map['isVerified'] != null ? map['isVerified'] as bool : null,
      isTillPresent: map['isTillPresent'] as bool,
    );
  }

  static bool noVisibleElementPresentForOtherUser(
      List<WorkExperienceModel> list) {
    if (list.isEmpty) return true;
    for (final element in list) {
      if (element.isVisible ?? false) return false;
    }
    return true;
  }
}
