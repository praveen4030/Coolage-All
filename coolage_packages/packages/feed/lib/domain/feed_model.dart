// ignore: camel_case_types

part of feed;

class FeedModel {
  String? title;
  String? caption;

  ///
  String? addedByName;
  String? docId;
  Timestamp? timestamp;

  ///
  String? categoryIcon;
  String? addedByCategory;

  ///
  String? postedBy;
  String? postedByPhoneNo;
  String? postedByUid;

  ///
  String? contactNo;
  String? redirectUrl;
  String? image;

  ///
  Timestamp? expiryDateTime;
  List<String>? publishTags;
  String? approvalStatus;

  Timestamp? declinedTimestamp;
  Timestamp? publishedTimestamp;
  List<String> likedBy;
  String shareDynamicLink;
  FeedModel({
    this.title,
    this.caption,
    this.categoryIcon,
    this.addedByCategory,
    this.addedByName,
    this.docId,
    this.postedBy,
    this.timestamp,
    this.redirectUrl,
    this.contactNo,
    this.postedByUid,
    this.image,
    this.approvalStatus,
    this.expiryDateTime,
    this.postedByPhoneNo,
    this.publishTags,
    this.declinedTimestamp,
    this.publishedTimestamp,
    this.likedBy = const [],
    this.shareDynamicLink = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'publishedTimestamp': publishedTimestamp,
      'declinedTimestamp': declinedTimestamp,
      'title': title,
      'caption': caption,
      'categoryIcon': categoryIcon,
      'addedByCategory': addedByCategory,
      'addedByName': addedByName,
      'docId': docId,
      'postedBy': postedBy,
      'timestamp': timestamp,
      'redirectUrl': redirectUrl,
      'contactNo': contactNo,
      'postedByUid': postedByUid,
      'image': image,
      'approvalStatus': approvalStatus,
      'expiryDateTime': expiryDateTime,
      'postedByPhoneNo': postedByPhoneNo,
      'publishTags': publishTags,
      'likedBy': likedBy,
      'shareDynamicLink': shareDynamicLink,
    };
  }

  factory FeedModel.fromMap(Map<String, dynamic> map) {
    return FeedModel(
      likedBy: map['likedBy'] == null
          ? []
          : (map['likedBy'] as List).map((k) => k as String).toList(),
      shareDynamicLink: map['shareDynamicLink'] == null
          ? ''
          : map['shareDynamicLink'] as String,
      publishedTimestamp: map['publishedTimestamp'] as Timestamp,
      declinedTimestamp: map['declinedTimestamp'] as Timestamp,
      title: map['title'] == null ? '' : map['title'] as String,
      caption: map['caption'] == null ? '' : map['caption'] as String,
      categoryIcon:
          map['categoryIcon'] == null ? '' : map['categoryIcon'] as String,
      addedByCategory: map['addedByCategory'] == null
          ? ''
          : map['addedByCategory'] as String,
      addedByName:
          map['addedByName'] == null ? '' : map['addedByName'] as String,
      docId: map['docId'] as String,
      postedBy: map['postedBy'] == null ? '' : map['postedBy'] as String,
      timestamp: map['timestamp'] as Timestamp,
      redirectUrl:
          map['redirectUrl'] == null ? '' : map['redirectUrl'] as String,
      contactNo: map['contactNo'] == null ? '' : map['contactNo'] as String,
      postedByUid:
          map['postedByUid'] == null ? '' : map['postedByUid'] as String,
      image: map['image'] == null ? '' : map['image'] as String,
      approvalStatus:
          map['approvalStatus'] == null ? '' : map['approvalStatus'] as String,
      expiryDateTime: map['expiryDateTime'] == null
          ? null
          : map['expiryDateTime'] as Timestamp,
      postedByPhoneNo: map['postedByPhoneNo'] == null
          ? ''
          : map['postedByPhoneNo'] as String,
      publishTags: map['publishTags'] == null
          ? []
          : (map['publishTags'] as List).map((e) => e as String).toList(),
    );
  }

  bool isExpired() {
    if (expiryDateTime != null) {
      if (DateTime.now().difference(expiryDateTime!.toDate()).inSeconds > 0) {
        return true;
      }
    }
    return false;
  }

  bool isApproved() {
    if (approvalStatus == Constants.APPROVED) return true;
    return false;
  }

  bool isDeclined() {
    if (approvalStatus == Constants.DECLINED) return true;
    return false;
  }

  bool isPending() {
    if (approvalStatus == Constants.PENDING) return true;
    return false;
  }

  bool isLikedByUser() {
    return likedBy.contains(Getters.getCurrentUserUid());
  }
}
