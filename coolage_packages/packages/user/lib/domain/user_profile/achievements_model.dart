part of user;

class AchievementsModel {
  String? achievement;
  bool? isVisible;
  String? id;
  AchievementsModel({
    this.achievement,
    this.isVisible,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'achievement': achievement,
      'isVisible': isVisible,
      'id': id,
    };
  }

  factory AchievementsModel.fromMap(Map<String, dynamic> map) {
    return AchievementsModel(
      achievement:
          map['achievement'] != null ? map['achievement'] as String : null,
      isVisible: map['isVisible'] != null ? map['isVisible'] as bool : null,
      id: map['id'] != null ? map['id'] as String : null,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AchievementsModel &&
        other.achievement == achievement &&
        other.isVisible == isVisible &&
        other.id == id;
  }

  @override
  int get hashCode => achievement.hashCode ^ isVisible.hashCode ^ id.hashCode;

  static bool noVisibleElementPresentForOtherUser(
      List<AchievementsModel> list) {
    if (list.isEmpty) return true;
    for (final element in list) {
      if (element.isVisible ?? false) return false;
    }
    return true;
  }
}
