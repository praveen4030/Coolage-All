part of core;

class FirebaseFunctions {
  static Future<void> updateDeviceToken() async {
    String? token;
    try {
      token = await FirebaseMessaging.instance.getToken();
    } catch (e) {
      debugPrint('Couldnt register the token');
    }
    final version = await CoolUser.getAppVersion();
    await FirebaseFirestore.instance.usersCollection
        .doc(Getters.getCurrentUserUid())
        .update({
      'deviceToken': token ?? '',
      'lastLoginAt': Timestamp.now(),
      'appVersion': version,
    });
  }

  static Future<bool> checkIfUserExists() async {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final DocumentSnapshot doc =
        await FirebaseFirestore.instance.usersCollection.doc(uid).get();
    if (doc.exists) {
      return true;
    } else {
      return false;
    }
  }
}
