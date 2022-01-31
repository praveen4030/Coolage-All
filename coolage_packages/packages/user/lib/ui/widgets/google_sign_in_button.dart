part of user;

class GoogleSignInButton extends StatelessWidget {
  final Widget child;
  const GoogleSignInButton({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () async {
        _handleSignIn(context);
      },
    );
  }

  static Future<User?> _handleSignIn(BuildContext context) async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn();
      final FirebaseAuth _auth = FirebaseAuth.instance;
      GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;

      GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final UserCredential user = await _auth.signInWithCredential(credential);
      return user.user;
    } on PlatformException catch (e) {
      FlushbarHelper.createError(message: e.toString()).show(context);
    } on FirebaseAuthException catch (e) {
      FlushbarHelper.createError(message: e.toString()).show(context);
    } catch (e) {
      FlushbarHelper.createError(message: e.toString()).show(context);
    }
  }
}
