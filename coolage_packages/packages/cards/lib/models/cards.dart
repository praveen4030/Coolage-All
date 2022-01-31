part of cards;

class Cards {
  String? docId;
  Timestamp? timestamp;
  String? image;
  String? url;

  Cards({
    @required this.docId,
    @required this.timestamp,
    @required this.image,
    @required this.url,
  });

  factory Cards.fromImageUrl(String imageUrl) {
    return Cards(
      docId: '',
      image: imageUrl,
      url: '',
      timestamp: Timestamp.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'docId': docId,
      'timestamp': timestamp,
      'image': image,
      'url': url,
    };
  }

  factory Cards.fromMap(Map<String, dynamic> map, String id) {
    return Cards(
      docId: id,
      timestamp: map['timestamp'] as Timestamp,
      image: map['image'] as String,
      url: map['url'] as String,
    );
  }

  @override
  String toString() {
    return 'Cards(docId: $docId, timestamp: $timestamp, image: $image, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cards &&
        other.docId == docId &&
        other.timestamp == timestamp &&
        other.image == image &&
        other.url == url;
  }

  @override
  int get hashCode {
    return docId.hashCode ^ timestamp.hashCode ^ image.hashCode ^ url.hashCode;
  }
}
