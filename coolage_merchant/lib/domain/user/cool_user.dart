import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';

class CoolUser {
  String? uid;
  String? name;
  String? phoneNo;
  String? imageUrl;
  String? college;
  String? emailId;
  String? canteenId;
  bool? isCanteenAdmin;
  CanteenBasicDetailsModel? canteenBasicDetailsModel;
  CoolUser({
    this.uid,
    this.name,
    this.phoneNo,
    this.imageUrl,
    this.college,
    this.emailId,
    this.canteenId,
    this.canteenBasicDetailsModel,
    this.isCanteenAdmin,
  });

  CoolUser.empty();

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'phoneNo': phoneNo,
      'imageUrl': imageUrl,
      'college': college,
      'emailId': emailId,
      'canteenBasicDetailsModel': canteenBasicDetailsModel?.toMap(),
      'canteenId': canteenId,
      'isCanteenAdmin': isCanteenAdmin ?? false,
    };
  }

  factory CoolUser.fromMap(Map<String, dynamic> map) {
    return CoolUser(
      uid: map['uid'] as String,
      name: map['name'] as String,
      phoneNo: map['phoneNo'] as String,
      imageUrl: map['imageUrl'] as String,
      college: map['college'] as String,
      emailId: map['emailId'] as String,
      canteenBasicDetailsModel: map['canteenBasicDetailsModel'] != null
          ? CanteenBasicDetailsModel.fromMap(
              map['canteenBasicDetailsModel'] as Map<String, dynamic>)
          : null,
      canteenId: map['canteenId'] as String,
      isCanteenAdmin:
          map['isCanteenAdmin'] != null ? map['isCanteenAdmin'] as bool : false,
    );
  }
}
