import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user/user.dart';
import 'package:core/core.dart';

mixin FetchUserDetails {
  static Future<CoolUser?> getUserFromUid(String uid) async {
    final DocumentSnapshot doc =
        await FirebaseFirestore.instance.usersCollection.doc(uid).get();
    if (doc.exists) {
      if (doc.data() != null) {
        return CoolUser.fromMap(doc.data() as Map<String, dynamic>);
      }
    }
    return null;
  }
}
