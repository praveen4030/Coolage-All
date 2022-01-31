part of college;

class AboutCollegeModel {
  String? collegeName;
  String? about;
  List<String>? imagesList;
  List<OfficialLinks>? officialLinksList;
  String? collegeLogo;
  String? mapImage;
  GeoPoint? geoPoint;
  AboutCollegeModel({
    this.collegeName,
    this.about,
    this.imagesList,
    this.officialLinksList,
    this.collegeLogo,
    this.geoPoint,
    this.mapImage,
  });

  factory AboutCollegeModel.empty() {
    return AboutCollegeModel(
      collegeLogo: '',
      about: '',
      imagesList: [],
      officialLinksList: [],
      collegeName: '',
      mapImage: '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'collegeName': collegeName,
      'about': about,
      'imagesList': imagesList,
      'officialLinksList': officialLinksList?.map((x) => x.toMap()).toList(),
      'collegeLogo': collegeLogo,
      'mapImage': mapImage,
      'geoPoint': geoPoint,
    };
  }

  factory AboutCollegeModel.fromMap(Map<String, dynamic> map) {
    return AboutCollegeModel(
      collegeName: map['collegeName'] as String,
      about: map['about'] as String,
      imagesList: map['imagesList'] == null
          ? []
          : List<String>.from(
              (map['imagesList'] as List).map((e) => e as String)),
      officialLinksList: map['officialLinks'] != null
          ? getofficialLinks(map['officialLinks'])
          : [],
      collegeLogo: map['collegeLogo'] as String,
      mapImage: map['mapImage'] as String,
      geoPoint: map['geoPoint'] as GeoPoint,
    );
  }

  static List<OfficialLinks> getofficialLinks(Map<String, dynamic> links) {
    final List<OfficialLinks> list = [];
    links.forEach((key, value) {
      list.add(OfficialLinks.fromMap(value as Map<String, dynamic>));
    });
    return list;
  }
}
