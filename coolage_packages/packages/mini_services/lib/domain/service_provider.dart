part of mini_services;

class ServiceProviderModel {
  String? category;
  String? image;
  String? name;
  String? desc;
  String? callingNo;
  String? whatsAppNo;
  GeoPoint? geoPoint;
  Timestamp? openFrom;
  Timestamp? closeBy;
  String? docId;
  ServiceProviderModel({
    this.image,
    this.name,
    this.desc,
    this.callingNo,
    this.whatsAppNo,
    this.geoPoint,
    this.closeBy,
    this.openFrom,
    this.docId,
    this.category,
  });

  factory ServiceProviderModel.empty() {
    return ServiceProviderModel(
      image: '',
      name: '',
      desc: '',
      callingNo: '',
      whatsAppNo: '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'name': name,
      'desc': desc,
      'callingNo': callingNo,
      'whatsAppNo': whatsAppNo,
      'geoPoint': geoPoint,
      'openFrom': openFrom,
      'closeBy': closeBy,
      'docId': docId ?? '',
      'category': category,
    };
  }

  factory ServiceProviderModel.fromMap(Map<String, dynamic> map) {
    return ServiceProviderModel(
      image: map['image'] as String,
      name: map['name'] as String,
      desc: map['desc'] as String,
      callingNo: map['callingNo'] as String,
      whatsAppNo: map['whatsAppNo'] as String,
      geoPoint: map['geoPoint'] as GeoPoint,
      openFrom: map['openFrom'] as Timestamp,
      closeBy: map['closeBy'] as Timestamp,
      docId: map['docId'] as String,
      category: map['category'] as String,
    );
  }
}
