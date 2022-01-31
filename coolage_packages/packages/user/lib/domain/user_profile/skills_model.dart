part of user;

class SkillsModel {
  String? skill;
  bool? isVisible;
  String? id;

  SkillsModel({
    this.isVisible,
    this.skill,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'skill': skill,
      'isVisible': isVisible,
      'id': id,
    };
  }

  factory SkillsModel.fromMap(Map<String, dynamic> map) {
    return SkillsModel(
      id: map['id'] != null ? map['id'] as String : null,
      skill: map['skill'] != null ? map['skill'] as String : null,
      isVisible: map['isVisible'] != null ? map['isVisible'] as bool : null,
    );
  }

  static bool noVisibleElementPresentForOtherUser(List<SkillsModel> list) {
    if (list.isEmpty) return true;
    for (final element in list) {
      if (element.isVisible ?? false) return false;
    }
    return true;
  }
}
