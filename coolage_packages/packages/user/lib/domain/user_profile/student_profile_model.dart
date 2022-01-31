part of user;

class StudentProfileModel {
  GeneralDetailsModel? generalDetailsModel;
  Map<String, AchievementsModel>? achievementsModel;
  Map<String, CampusPorsModel>? campusPorsModel;
  Map<String, ProjectsModel>? projectsModel;
  Map<String, SkillsModel>? skillsModel;
  Map<String, WorkExperienceModel>? workExperienceModel;
  Map<String, EducationDetailsModel>? educationDetailsModel;
  Map<String, LanguageModel>? languagesModel;

  StudentProfileModel({
    this.generalDetailsModel,
    this.achievementsModel,
    this.campusPorsModel,
    this.projectsModel,
    this.skillsModel,
    this.workExperienceModel,
    this.educationDetailsModel,
    this.languagesModel,
  });

  factory StudentProfileModel.empty() {
    return StudentProfileModel(
      generalDetailsModel: GeneralDetailsModel.empty(),
      achievementsModel: {},
      campusPorsModel: {},
      projectsModel: {},
      skillsModel: {},
      workExperienceModel: {},
      educationDetailsModel: {},
      languagesModel: {},
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'generalDetailsModel':
          generalDetailsModel?.toMap() ?? GeneralDetailsModel.empty(),
      'achievementsModel': Map<String, dynamic>.from(
        achievementsModel?.map((key, value) => MapEntry(key, value.toMap())) ??
            {},
      ),
      'campusPorsModel': Map<String, dynamic>.from(
        campusPorsModel?.map((key, value) => MapEntry(key, value.toMap())) ??
            {},
      ),
      'projectsModel': Map<String, dynamic>.from(
        projectsModel?.map((key, value) => MapEntry(key, value.toMap())) ?? {},
      ),
      'skillsModel': Map<String, dynamic>.from(
        skillsModel?.map((key, value) => MapEntry(key, value.toMap())) ?? {},
      ),
      'workExperienceModel': Map<String, dynamic>.from(
        workExperienceModel
                ?.map((key, value) => MapEntry(key, value.toMap())) ??
            {},
      ),
      'educationDetailsModel': Map<String, dynamic>.from(
        educationDetailsModel
                ?.map((key, value) => MapEntry(key, value.toMap())) ??
            {},
      ),
      'languagesModel': Map<String, dynamic>.from(
        languagesModel?.map((key, value) => MapEntry(key, value.toMap())) ?? {},
      ),
    };
  }

  factory StudentProfileModel.fromMap(Map<String, dynamic> map) {
    return StudentProfileModel(
      languagesModel: map['languagesModel'] != null
          ? Map<String, LanguageModel>.from((map['languagesModel']
                  as Map<String, dynamic>)
              .map((key, value) => MapEntry(key, LanguageModel.fromMap(value))))
          : {},
      generalDetailsModel: map['generalDetailsModel'] != null
          ? GeneralDetailsModel.fromMap(map['generalDetailsModel'])
          : GeneralDetailsModel.empty(),
      achievementsModel: map['achievementsModel'] != null
          ? Map<String, AchievementsModel>.from(
              (map['achievementsModel'] as Map<String, dynamic>).map(
                  (key, value) =>
                      MapEntry(key, AchievementsModel.fromMap(value))))
          : {},
      campusPorsModel: map['campusPorsModel'] != null
          ? Map<String, CampusPorsModel>.from(
              (map['campusPorsModel'] as Map<String, dynamic>).map(
                  (key, value) =>
                      MapEntry(key, CampusPorsModel.fromMap(value))))
          : {},
      projectsModel: map['projectsModel'] != null
          ? Map<String, ProjectsModel>.from((map['projectsModel']
                  as Map<String, dynamic>)
              .map((key, value) => MapEntry(key, ProjectsModel.fromMap(value))))
          : {},
      skillsModel: map['skillsModel'] != null
          ? Map<String, SkillsModel>.from((map['skillsModel']
                  as Map<String, dynamic>)
              .map((key, value) => MapEntry(key, SkillsModel.fromMap(value))))
          : {},
      workExperienceModel: map['workExperienceModel'] != null
          ? Map<String, WorkExperienceModel>.from(
              (map['workExperienceModel'] as Map<String, dynamic>).map(
                  (key, value) =>
                      MapEntry(key, WorkExperienceModel.fromMap(value))))
          : {},
      educationDetailsModel: map['educationDetailsModel'] != null
          ? Map<String, EducationDetailsModel>.from(
              (map['educationDetailsModel'] as Map<String, dynamic>).map(
                  (key, value) =>
                      MapEntry(key, EducationDetailsModel.fromMap(value))))
          : {},
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
