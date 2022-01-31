import 'package:college/domain/contact_info_group.dart';

class GroupModel {
  String? image;
  String? logoImage;
  String? name;
  String? tagline;
  String? about;
  String? docId;
  Map<String, ContactInfoGroupModel>? contactInfoMap;
  Map<String, String>? emailsMap;
  List<String>? departmentDegreesList;
  bool? isDepartment;
  GroupModel({
    this.image,
    this.logoImage,
    this.name,
    this.tagline,
    this.about,
    this.docId,
    this.contactInfoMap,
    this.emailsMap,
    this.isDepartment,
    this.departmentDegreesList,
  });

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'logoImage': logoImage,
      'name': name,
      'tagline': tagline,
      'about': about,
      'docId': docId,
      'emailsMap': emailsMap,
      'isDepartment': isDepartment,
      'departmentDegreesList': departmentDegreesList,
      'contactInfoMap':
          contactInfoMap?.map((key, value) => MapEntry(key, value.toMap())) ??
              {},
    };
  }

  factory GroupModel.fromMap(Map<String, dynamic> map) {
    return GroupModel(
      departmentDegreesList: map['departmentDegreesList'] != null
          ? (map['departmentDegreesList'] as List)
              .map((e) => e as String)
              .toList()
          : [],
      image: map['image'],
      logoImage: map['logoImage'],
      name: map['name'],
      tagline: map['tagline'],
      about: map['about'],
      docId: map['docId'],
      emailsMap: map['emailsMap'] != null
          ? Map<String, String>.from(map['emailsMap'])
          : {},
      isDepartment: map['isDepartment'],
      contactInfoMap: map['contactInfoMap'] != null
          ? (map['contactInfoMap'] as Map<String, dynamic>).map((key, value) =>
              MapEntry(key, ContactInfoGroupModel.fromMap(value)))
          : {},
    );
  }

  List<ContactInfoGroupModel> getUpdatedUniqueContactInfoList(
      List<ContactInfoGroupModel> list) {
    List<ContactInfoGroupModel> updatedList = [];
    for (final model in list) {
      updatedList.add(ContactInfoGroupModel.fromMap(model.toMap()));
    }
    return updatedList;
  }
}
