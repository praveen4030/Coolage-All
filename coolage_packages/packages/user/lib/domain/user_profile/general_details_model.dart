part of user;

class GeneralDetailsModel {
  TimestampVisible? dob;
  AddressModel? addressModel;
  StringVisible? sex;
  StringVisible? pronoun;
  StringVisible? impairment;
  StringVisible? enrollmentNo;
  StringVisible? emailId;
  StringVisible? nationality;
  StringVisible? category;
  StringVisible? phoneNo;
  GeneralDetailsModel({
    this.dob,
    this.addressModel,
    this.sex,
    this.pronoun,
    this.impairment,
    this.enrollmentNo,
    this.emailId,
    this.nationality,
    this.category,
    this.phoneNo,
  });

  factory GeneralDetailsModel.empty() {
    return GeneralDetailsModel(
      dob: TimestampVisible(
        isVisible: true,
      ),
      sex: StringVisible(isVisible: true, data: ''),
      pronoun: StringVisible(isVisible: true, data: ''),
      impairment: StringVisible(isVisible: true, data: ''),
      nationality: StringVisible(isVisible: true, data: ''),
      addressModel: AddressModel(
        addressLine1: "",
        addressLine2: "",
        isVisible: true,
      ),
      phoneNo: StringVisible(isVisible: true, data: ''),
      emailId: StringVisible(isVisible: true, data: ''),
      enrollmentNo: StringVisible(isVisible: true, data: ''),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dob': dob?.toMap(),
      'sex': sex?.toMap(),
      'pronoun': pronoun?.toMap(),
      'impairment': impairment?.toMap(),
      'enrollmentNo': enrollmentNo?.toMap(),
      'emailId': emailId?.toMap(),
      'nationality': nationality?.toMap(),
      'category': category?.toMap(),
      'addressModel': addressModel?.toMap(),
      'phoneNo': phoneNo?.toMap(),
    };
  }

  factory GeneralDetailsModel.fromMap(Map<String, dynamic> map) {
    return GeneralDetailsModel(
      phoneNo: map['phoneNo'] != null
          ? StringVisible.fromMap(map['phoneNo'] as Map<String, dynamic>)
          : null,
      addressModel: map['addressModel'] != null
          ? AddressModel.fromMap(map['addressModel'] as Map<String, dynamic>)
          : null,
      dob: map['dob'] != null
          ? TimestampVisible.fromMap(map['dob'] as Map<String, dynamic>)
          : null,
      sex: map['sex'] != null
          ? StringVisible.fromMap(map['sex'] as Map<String, dynamic>)
          : null,
      pronoun: map['pronoun'] != null
          ? StringVisible.fromMap(map['pronoun'] as Map<String, dynamic>)
          : null,
      impairment: map['impairment'] != null
          ? StringVisible.fromMap(map['impairment'] as Map<String, dynamic>)
          : null,
      enrollmentNo: map['enrollmentNo'] != null
          ? StringVisible.fromMap(map['enrollmentNo'] as Map<String, dynamic>)
          : null,
      emailId: map['emailId'] != null
          ? StringVisible.fromMap(map['emailId'] as Map<String, dynamic>)
          : null,
      nationality: map['nationality'] != null
          ? StringVisible.fromMap(map['nationality'] as Map<String, dynamic>)
          : null,
      category: map['category'] != null
          ? StringVisible.fromMap(map['category'] as Map<String, dynamic>)
          : null,
    );
  }
}
