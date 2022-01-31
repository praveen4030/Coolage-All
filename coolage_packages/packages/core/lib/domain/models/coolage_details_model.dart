part of core;

class CoolageDetailsModel {
  List<OnboardedCollege>? onboardedCollegesList;
  String? coolageHelpContact;
  String? coolageEmailContact;
  OrderTncModel? orderTncModel;
  List<String>? blogCategoriesList;
  Map<String, String>? miniServices;
  Map<String, Map<String, int>>? programmesMap;
  CoolageDetailsModel({
    this.onboardedCollegesList,
    this.coolageHelpContact,
    this.coolageEmailContact,
    this.orderTncModel,
    this.blogCategoriesList,
    this.miniServices,
    this.programmesMap,
  });

  List<String> getCollegesList() {
    List<String> collegesList = [];
    for (final element in onboardedCollegesList!) {
      collegesList.add(element.college!);
    }
    return collegesList;
  }

  factory CoolageDetailsModel.empty() {
    return CoolageDetailsModel(
        onboardedCollegesList: [],
        coolageEmailContact: 'coolagecompany@gmail.com',
        coolageHelpContact: "+917221904716",
        blogCategoriesList: [],
        miniServices: {},
        programmesMap: {});
  }

  Map<String, dynamic> toMap() {
    return {
      'blogCategoriesList': blogCategoriesList,
      'onboardedCollegesList':
          onboardedCollegesList?.map((x) => x.toMap()).toList() ?? [],
      'coolageHelpContact': coolageHelpContact,
      'coolageEmailContact': coolageEmailContact,
      'orderTncModel': orderTncModel?.toMap() ?? OrderTncModel.empty().toMap(),
      'miniServices': miniServices,
      'programmes': programmesMap,
    };
  }

  factory CoolageDetailsModel.fromMap(Map<String, dynamic> map) {
    return CoolageDetailsModel(
      miniServices: (map['miniServices'] as Map<String, dynamic>)
          .map((key, value) => MapEntry(key, value as String)),
      onboardedCollegesList: List<OnboardedCollege>.from(
          (map['onboardedCollegesList'] as List)
              .map((x) => OnboardedCollege.fromMap(x as Map<String, dynamic>))),
      coolageHelpContact: map['coolageHelpContact'] as String,
      coolageEmailContact: map['coolageEmailContact'] as String,
      orderTncModel:
          OrderTncModel.fromMap(map['orderTncModel'] as Map<String, dynamic>),
      programmesMap: (map['programmes'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(
            key,
            (value as Map<String, dynamic>).map((underKey, underValue) =>
                MapEntry(underKey, int.parse(underValue.toString())))),
      ),
      blogCategoriesList: map['blogCategoriesList'] == null
          ? []
          : List<String>.from(
              (map['blogCategoriesList'] as List).map((e) => e as String)),
    );
  }
}
