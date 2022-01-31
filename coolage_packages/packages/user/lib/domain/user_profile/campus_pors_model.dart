part of user;

class CampusPorsModel {
  String? title;
  String? organisation;
  String? description;
  Timestamp? startFrom;
  Timestamp? endAt;
  bool? isTillPresent;
  bool? isVisible;
  bool? isVerified;
  String? id;
  CampusPorsModel({
    this.title,
    this.organisation,
    this.description,
    this.startFrom,
    this.endAt,
    this.isVisible,
    this.isVerified,
    this.id,
    this.isTillPresent,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'organisation': organisation,
      'description': description,
      'startFrom': startFrom,
      'endAt': endAt,
      'isVisible': isVisible,
      'isVerified': isVerified,
      'id': id,
      'isTillPresent': isTillPresent,
    };
  }

  factory CampusPorsModel.fromMap(Map<String, dynamic> map) {
    return CampusPorsModel(
      title: map['title'] != null ? map['title'] as String : null,
      organisation:
          map['organisation'] != null ? map['organisation'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      id: map['id'] != null ? map['id'] as String : null,
      startFrom:
          map['startFrom'] != null ? map['startFrom'] as Timestamp : null,
      endAt: map['endAt'] != null ? map['endAt'] as Timestamp : null,
      isVisible: map['isVisible'] != null ? map['isVisible'] as bool : null,
      isVerified: map['isVerified'] != null ? map['isVerified'] as bool : null,
      isTillPresent: map['isTillPresent'] as bool,
    );
  }

  static bool noVisibleElementPresentForOtherUser(List<CampusPorsModel> list) {
    if (list.isEmpty) return true;
    for (final element in list) {
      if (element.isVisible ?? false) return false;
    }
    return true;
  }
}
