part of blogs;

class BlogsModel {
  String? title;
  String? text;
  String? image;
  String? author;
  String? authorPhoneNo;
  Timestamp? timestamp;
  String? blogUrl;
  String? docId;
  double? viewsCount;
  String? city;
  String? postedByUserCollege;
  String? postedByUid;
  String? college;
  bool? isPublic;
  List<String>? filterTags;
  String? approvalStatus;
  Timestamp? declinedTimestamp;
  Timestamp? publishedTimestamp;
  BlogsModel({
    this.title,
    this.text,
    this.image,
    this.author,
    this.timestamp,
    this.blogUrl,
    this.docId,
    this.viewsCount,
    this.city,
    this.college,
    this.isPublic,
    this.filterTags,
    this.authorPhoneNo,
    this.approvalStatus,
    this.declinedTimestamp,
    this.publishedTimestamp,
    this.postedByUserCollege,
    this.postedByUid,
  });

  Map<String, dynamic> toMap() {
    return {
      'postedByUserCollege': postedByUserCollege,
      'title': title,
      'text': text,
      'image': image,
      'author': author,
      'timestamp': timestamp,
      'blogUrl': blogUrl,
      'docId': docId,
      'viewsCount': viewsCount,
      'city': city,
      'college': college,
      'isPublic': isPublic,
      'filterTags': filterTags,
      'authorPhoneNo': authorPhoneNo,
      'postedByUid': postedByUid,
      'approvalStatus': approvalStatus,
      'publishedTimestamp': publishedTimestamp,
      'declinedTimestamp': declinedTimestamp,
    };
  }

  factory BlogsModel.fromMap(Map<String, dynamic> map) {
    return BlogsModel(
      postedByUserCollege: map['postedByUserCollege'] as String,
      title: map['title'] as String,
      postedByUid: map['postedByUid'] as String,
      text: map['text'] as String,
      image: map['image'] as String,
      author: map['author'] as String,
      timestamp: map['timestamp'] as Timestamp,
      blogUrl: map['blogUrl'] as String,
      docId: map['docId'] as String,
      viewsCount: map['viewsCount'] as double,
      city: map['city'] as String,
      college: map['college'] as String,
      isPublic: map['isPublic'] as bool,
      authorPhoneNo: map['authorPhoneNo'] as String,
      filterTags: (map['filterTags'] as List).map((e) => e as String).toList(),
      approvalStatus:
          map['approvalStatus'] == null ? '' : map['approvalStatus'] as String,
      publishedTimestamp: map['publishedTimestamp'] as Timestamp,
      declinedTimestamp: map['declinedTimestamp'] as Timestamp,
    );
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
}
