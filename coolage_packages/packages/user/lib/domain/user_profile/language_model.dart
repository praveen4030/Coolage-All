part of user;

class LanguageModel {
  String? language;
  bool? isVisible;
  String? id;

  LanguageModel({
    this.isVisible,
    this.language,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'language': language,
      'isVisible': isVisible,
      'id': id,
    };
  }

  factory LanguageModel.fromMap(Map<String, dynamic> map) {
    return LanguageModel(
      id: map['id'] != null ? map['id'] as String : null,
      language: map['language'] != null ? map['language'] as String : null,
      isVisible: map['isVisible'] != null ? map['isVisible'] as bool : null,
    );
  }

  static bool noVisibleElementPresentForOtherUser(List<LanguageModel> list) {
    if (list.isEmpty) return true;
    for (final element in list) {
      if (element.isVisible ?? false) return false;
    }
    return true;
  }
}
