part of user;

class GoogleSignInFunctions {
  static Future<User?> handleSignIn(BuildContext context) async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn();
      final FirebaseAuth _auth = FirebaseAuth.instance;
      await GoogleSignInFunctions.disconnect(_googleSignIn);

      GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;

      GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential user = await _auth.signInWithCredential(credential);
      await AuthFunctions.saveGoogleAuthCredentials(
          googleAuth.accessToken, googleAuth.idToken);
      return user.user;
    } on PlatformException catch (e) {
      debugPrint(e.toString());

      if (e.message != 'Concurrent operations detected: signIn, signIn') {
        FlushbarHelper.createError(message: e.message).show(context);
      }
    } on FirebaseAuthException catch (e) {
      FlushbarHelper.createError(message: e.message.toString()).show(context);
    } catch (e) {
      FlushbarHelper.createError(message: e.toString()).show(context);
    }
  }

  static Future<String?> verifyCollegeSignIn(
      String college, BuildContext context) async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn();
      final FirebaseAuth _auth = FirebaseAuth.instance;
      await GoogleSignInFunctions.disconnect(_googleSignIn);

      GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;
      if (!Functions.checkIfDomainMatchesWithCollege(
          googleUser.email, context, college)) {
        Fluttertoast.showToast(
            msg:
                "It doesn't seems to be your college email id. Please try again with your college email id");
        return null;
      }

      GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      if (await AuthFunctions.checkIfAuthenticatedWithPhone()) {
        final UserCredential user =
            await _auth.currentUser!.linkWithCredential(credential);
        await AuthFunctions.saveGoogleAuthCredentials(
            googleAuth.accessToken, googleAuth.idToken);
      }
      Fluttertoast.showToast(
          msg: "College verification completed successfully");
      return googleUser.email;
    } on PlatformException catch (e) {
      if (e.message != 'Concurrent operations detected: signIn, signIn') {
        FlushbarHelper.createError(message: e.message).show(context);
      }
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());

      if (e.code == 'requires-recent-login') {
        return verifyCollegeSignInRetry(college, context);
      }
      FlushbarHelper.createError(message: e.toString()).show(context);
    } catch (e) {
      FlushbarHelper.createError(message: e.toString()).show(context);
    }
  }

  static Future<void> disconnect(GoogleSignIn googleSignIn) async {
    try {
      if (await googleSignIn.isSignedIn()) {
        await googleSignIn.disconnect();
      }
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static Future<String?> verifyCollegeSignInRetry(
      String college, BuildContext context) async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn();
      final FirebaseAuth _auth = FirebaseAuth.instance;
      await GoogleSignInFunctions.disconnect(_googleSignIn);

      // await FirebaseAuth.instance.signOut();

      GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;
      if (!Functions.checkIfDomainMatchesWithCollege(
          googleUser.email, context, college)) {
        Fluttertoast.showToast(
            msg:
                "It doesn't seems to be your college email id. Please try again with your college email id");
        return null;
      }

      GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      if (await AuthFunctions.checkIfAuthenticatedWithPhone()) {
        final UserCredential user =
            await _auth.currentUser!.linkWithCredential(credential);
        await AuthFunctions.saveGoogleAuthCredentials(
            googleAuth.accessToken, googleAuth.idToken);
      }
      Fluttertoast.showToast(
          msg: "College verification completed successfully");
      return googleUser.email;
    } on PlatformException catch (e) {
      debugPrint(e.toString());
      if (e.code == 'requires-recent-login') {
        return verifyCollegeSignInRetry(college, context);
      }
    } on FirebaseAuthException catch (e) {
      FlushbarHelper.createError(message: e.toString()).show(context);
    } catch (e) {
      FlushbarHelper.createError(message: e.toString()).show(context);
    }
  }
}
