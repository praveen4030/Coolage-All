part of core;

// Create storage

mixin AuthFunctions {
  static Future<void> reauthenticateWithPhone({Function? onCodeSent}) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: FirebaseAuth.instance.currentUser!.phoneNumber!,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        final error = 'Something went wrong';
        Fluttertoast.showToast(msg: error);
      },
      codeSent: (verificationId, resendToken) async {
        debugPrint("OTP sent: $verificationId");
        // Navigator.of(CoreGetters.getContext).pop();
        await showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            context: CoreGetters.getContext,
            builder: (context) {
              return VerifyOTPDialog(
                confirmationResult: null,
                countryCode: "",
                verificationId: verificationId,
                isReauthenticatingUser: true,
                resentToken: resendToken,
                mobileNo: FirebaseAuth.instance.currentUser!.phoneNumber!,
                onReauthentication: () {
                  if (onCodeSent != null) {
                    onCodeSent();
                  }
                },
              );
            });
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  static Future<void> saveGoogleAuthCredentials(
      String? accessToken, String? idToken) async {
    const storage = FlutterSecureStorage();
    await storage.write(key: 'accessToken', value: accessToken);
    await storage.write(key: 'idToken', value: idToken);
  }

  static Future<AuthCredential> getGoogleAuthCredentials() async {
    const storage = FlutterSecureStorage();

    final accessToken = await storage.read(key: 'accessToken');
    final idToken = await storage.read(key: 'idToken');

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: accessToken,
      idToken: idToken,
    );
    return credential;
  }

  static Future<void> saveUserCredentials(AuthCredential credential) async {
    const storage = FlutterSecureStorage();
    final providerId = credential.providerId;
    final signInMethod = credential.signInMethod;

    await storage.write(key: 'providerId', value: providerId);
    await storage.write(key: 'signInMethod', value: signInMethod);
    if (credential.token != null) {
      await storage.write(key: 'token', value: credential.token!.toString());
    }
  }

  static Future<AuthCredential> getUserCredentials() async {
    const storage = FlutterSecureStorage();
    final providerId = await storage.read(key: 'providerId');
    final signInMethod = await storage.read(key: 'signInMethod');
    final token = await storage.read(key: 'token');
    final credential = AuthCredential(
        providerId: providerId!,
        signInMethod: signInMethod!,
        token: int.tryParse(token ?? '0'));
    return credential;
  }

  static Future<void> reauthenticateUser({Function? onAuthentication}) async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      for (final provider in user.providerData) {
        if (provider.providerId == 'google.com') {
          final credentials = await AuthFunctions.getGoogleAuthCredentials();
          await user.reauthenticateWithCredential(credentials);
          if (onAuthentication != null) {
            onAuthentication();
          }
        }
      }
      for (final provider in user.providerData) {
        if (provider.providerId == 'phone') {
          await AuthFunctions.reauthenticateWithPhone(
              onCodeSent: onAuthentication);
        }
      }
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static Future<bool> checkIfAuthenticatedWithPhone() async {
    final user = FirebaseAuth.instance.currentUser!;

    for (final provider in user.providerData) {
      if (provider.providerId == 'phone') {
        return true;
      }
    }
    return false;
  }

  static Future<bool> checkIfAuthenticatedWithGoogle() async {
    final user = FirebaseAuth.instance.currentUser!;

    for (final provider in user.providerData) {
      if (provider.providerId == 'google.com') {
        return true;
      }
    }
    return false;
  }
}
