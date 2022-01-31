part of college;

class OfficialLinks {
  String? name;
  String? link;
  String? image;
  String? docId;
  OfficialLinks({
    this.name,
    this.link,
    this.image,
    this.docId,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'link': link,
      'image': image,
      'docId': docId,
    };
  }

  factory OfficialLinks.fromMap(Map<String, dynamic> map) {
    return OfficialLinks(
      name: map['name'] as String,
      link: map['link'] as String,
      image: map['image'] as String,
      docId: map['docId'] as String,
    );
  }
}
