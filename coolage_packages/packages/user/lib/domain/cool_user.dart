part of user;

class CoolUser {
  String? uid;
  String? name;
  String? nameInLowerCase;
  String? phoneNo;
  String? imageUrl;
  String? college;
  String? emailId;
  String? designation;
  String? branch;
  String? year;
  String? degree;
  String? gender;
  Timestamp? lastSeen;
  Map<String, Map<String, DeliveryAddressModel>>? deliveryAddressesMap;
  bool? isOnline;
  bool? isAdmin;
  String? deviceToken;
  int? appVersion;
  Timestamp? signUpAt;
  Timestamp? lastLoginAt;
  String? bio;
  Map<String, String>? socialMediaUrls;
  String? userType;
  String? batchStart;
  String? batchFinish;
  List<String>? groups;
  String? profileLink;

  Map<String, UserGroupModel>? groupsJoined;
  StudentProfileModel? studentProfileModel;
  CoolUser({
    this.uid,
    this.name,
    this.phoneNo,
    this.imageUrl,
    this.college,
    this.emailId,
    this.branch,
    this.year,
    this.degree,
    this.gender,
    this.lastSeen,
    this.isOnline,
    this.deliveryAddressesMap,
    this.deviceToken,
    this.appVersion,
    this.lastLoginAt,
    this.signUpAt,
    this.nameInLowerCase,
    this.bio,
    this.socialMediaUrls,
    this.studentProfileModel,
    this.batchFinish,
    this.batchStart,
    this.userType,
    this.designation,
    this.groupsJoined,
    this.groups,
    this.profileLink,
    this.isAdmin,
  });

  CoolUser.empty();

  Future<Map<String, dynamic>> toMap() async {
    final gettingAppVersion = await getAppVersion();
    return {
      'isAdmin': false,
      'designation': designation,
      'batchFinish': batchFinish,
      'batchStart': batchStart,
      'userType': userType,
      'studentProfileModel': studentProfileModel?.toMap(),
      'socialMediaUrls': socialMediaUrls,
      'bio': bio,
      'uid': uid,
      'name': name,
      'phoneNo': phoneNo,
      'imageUrl': imageUrl,
      'college': college,
      'emailId': emailId,
      'branch': branch,
      'year': year,
      'degree': degree,
      'gender': gender,
      'lastSeen': lastSeen,
      'isOnline': isOnline,
      'profileLink': profileLink ?? '',
      'deliveryAddressesMap': deliveryAddressesMap?.map((key, value) =>
              MapEntry(key,
                  value.map((key, value) => MapEntry(key, value.toMap())))) ??
          {},
      'deviceToken': deviceToken,
      'appVersion': gettingAppVersion,
      'lastLoginAt': lastLoginAt,
      'signUpAt': signUpAt,
      'nameInLowerCase': name?.toLowerCase() ?? '',
      'groups': groups,
      'groupsJoined': groupsJoined == null
          ? {}
          : groupsJoined!.map((key, value) => MapEntry(key, value.toMap()))
    };
  }

  static Future<int?> getAppVersion() async {
    try {
      if (!kIsWeb) {
        final PackageInfo packageInfo = await PackageInfo.fromPlatform();
        return int.parse(packageInfo.buildNumber);
      } else {
        return null;
      }
    } catch (e) {
      return 0;
    }
  }

  factory CoolUser.fromMap(Map<String, dynamic> map) {
    return CoolUser(
        isAdmin: map['isAdmin'] != null ? map['isAdmin'] as bool : false,
        profileLink: map['profileLink'] as String,
        designation: map['designation'] as String,
        batchFinish: map['batchFinish'] as String,
        batchStart: map['batchStart'] as String,
        userType: map['userType'] as String,
        studentProfileModel: map['studentProfileModel'] != null
            ? StudentProfileModel.fromMap(
                (map['studentProfileModel'] as Map<String, dynamic>))
            : StudentProfileModel.empty(),
        socialMediaUrls: map['socialMediaUrls'] != null
            ? (map['socialMediaUrls'] as Map<String, dynamic>)
                .map((key, value) => MapEntry(key, value as String))
            : {},
        groups: map['groups'] != null
            ? (map['groups'] as List).map((e) => e as String).toList()
            : [],
        bio: map['bio'] as String,
        uid: map['uid'] as String,
        name: map['name'] as String,
        phoneNo: map['phoneNo'] as String,
        imageUrl: map['imageUrl'] as String,
        college: map['college'] as String,
        emailId: map['emailId'] as String,
        branch: map['branch'] as String,
        year: map['year'] as String,
        degree: map['degree'] as String,
        gender: map['gender'] as String,
        lastSeen: map['lastSeen'] as Timestamp,
        isOnline: map['isOnline'] as bool,
        appVersion: map['appVersion'] != null
            ? int.tryParse(map['appVersion']?.toString() ?? '0')
            : 0,
        deliveryAddressesMap: map['deliveryAddressesMap'] != null
            ? getDeliveryAddressesFromMap(
                map['deliveryAddressesMap'] as Map<String, dynamic>)
            : {},
        deviceToken: map['deviceToken'] as String,
        lastLoginAt: map['lastLoginAt'] as Timestamp,
        signUpAt: map['signUpAt'] as Timestamp,
        nameInLowerCase: map['nameInLowerCase'] as String,
        groupsJoined: map['groupsJoined'] == null
            ? {}
            : (map['groupsJoined'] as Map<String, dynamic>).map((key, value) =>
                MapEntry(key,
                    UserGroupModel.fromMap(value as Map<String, dynamic>))));
  }

  static Map<String, Map<String, DeliveryAddressModel>>
      getDeliveryAddressesFromMap(Map<String, dynamic> mapping) {
    return mapping.map(
      (key, value) => MapEntry(
          key,
          (value as Map).map((key, value) => MapEntry(
              key as String,
              DeliveryAddressModel.fromMap(
                value as Map<String, dynamic>,
              )))),
    );
  }

  static Future<Coordinates?> getUserLocation() async {
    LocationData? myLocation;
    String error;
    final Location location = Location();

    try {
      myLocation = await location.getLocation();
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        error = 'please grant permission';
        debugPrint(error);
      }
      if (e.code == 'PERMISSION_DENIED_NEVER_ASK') {
        error = 'permission denied- please enable it from app settings';
        debugPrint(error);
      }
    }
    if (myLocation != null) {
      final coordinates =
          Coordinates(myLocation.latitude!, myLocation.longitude!);
      return coordinates;
    }
    return null;
  }
}
