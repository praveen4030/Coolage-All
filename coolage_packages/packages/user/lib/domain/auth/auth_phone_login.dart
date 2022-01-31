part of user;

mixin AuthPhoneLogin {
  static Future<void> signInWithPhoneNo({
    required CountryCode countryCode,
    required String phoneNo,
    required Function(bool) setLoadingFn,
    required Function(ConfirmationResult) onSuccessWeb,
    required Function(String, int?) onSuccessApp,
  }) async {
    if (kIsWeb) {
      tempPhoneAuthForWeb(
        countryCode: countryCode,
        phoneNo: phoneNo,
        setLoadingFn: setLoadingFn,
        onSuccess: onSuccessWeb,
      );
    } else {
      tempPhoneAuthForApp(
        countryCode: countryCode,
        phoneNo: phoneNo,
        setLoadingFn: setLoadingFn,
        onSuccess: onSuccessApp,
      );
    }
  }

  static Future<void> tempPhoneAuthForApp({
    required CountryCode countryCode,
    required String phoneNo,
    required Function(bool) setLoadingFn,
    required Function(String, int?) onSuccess,
  }) async {
    try {
      setLoadingFn(true);
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '${countryCode.dialCode}$phoneNo',
        verificationCompleted: (PhoneAuthCredential credential) {
          setLoadingFn(false);
        },
        verificationFailed: (FirebaseAuthException e) {
          setLoadingFn(false);
          final error = e.message ?? 'Something went wrong';
          FlushbarHelper.createError(message: error)
              .show(CoreGetters.getContext);
        },
        codeSent: (verificationId, resendToken) {
          setLoadingFn(false);
          debugPrint("OTP sent: $verificationId");
          onSuccess(verificationId, resendToken);
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          setLoadingFn(false);
        },
      );
    } on FirebaseAuthException catch (e) {
      setLoadingFn(false);
      FlushbarHelper.createError(message: e.message)
          .show(CoreGetters.getContext);
    } catch (e) {
      setLoadingFn(false);
      FlushbarHelper.createError(message: e.toString())
          .show(CoreGetters.getContext);
    }
  }

  static Future<void> tempPhoneAuthForWeb({
    required CountryCode countryCode,
    required String phoneNo,
    required Function(bool) setLoadingFn,
    required Function(ConfirmationResult) onSuccess,
  }) async {
    try {
      setLoadingFn(true);

      final ConfirmationResult confirmation =
          await FirebaseAuth.instance.signInWithPhoneNumber(
        '${countryCode.dialCode}$phoneNo',
        RecaptchaVerifier(
          onSuccess: () => debugPrint('reCAPTCHA Completed!'),
          onError: (FirebaseAuthException error) =>
              debugPrint(error.toString()),
          onExpired: () => debugPrint('reCAPTCHA Expired!'),
        ),
      );
      setLoadingFn(false);
      onSuccess(confirmation);
    } on FirebaseAuthException catch (e) {
      setLoadingFn(false);
      FlushbarHelper.createError(message: e.message)
          .show(CoreGetters.getContext);
    } catch (e) {
      setLoadingFn(false);
      FlushbarHelper.createError(message: e.toString())
          .show(CoreGetters.getContext);
    }
  }

  static Future<void> verifyOTP({
    required String otp,
    required ConfirmationResult? confirmationResult,
    required String? verificationId,
    required Function(bool) setLoadingFn,
    required Function onSuccess,
  }) async {
    try {
      final _auth = FirebaseAuth.instance;
      setLoadingFn(true);
      if (kIsWeb) {
        UserCredential userCredential = await confirmationResult!.confirm(
          otp,
        );
        if (userCredential.user != null) {
          Fluttertoast.showToast(msg: "OTP Verified successfully !");
          onSuccess();
        }
      } else {
        final AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: verificationId!,
          smsCode: otp,
        );
        await _auth
            .signInWithCredential(phoneAuthCredential)
            .then((value) async {
          Fluttertoast.showToast(msg: "OTP Verified successfully !");
          onSuccess();
        });
      }
      setLoadingFn(false);
    } on FirebaseAuthException catch (e) {
      setLoadingFn(false);

      if (e.code == "invalid-credential" ||
          e.code == "invalid-verification-code") {
        Fluttertoast.showToast(msg: "Incorrect code! Please re-enter.");
      } else {
        Fluttertoast.showToast(msg: "Something went wrong! Please retry.");
      }
    } catch (e) {
      setLoadingFn(false);
      Fluttertoast.showToast(msg: "Something went wrong! Please retry.");
    }
  }

  static Future<void> verifyOTPToLinkCredential({
    required String otp,
    required ConfirmationResult? confirmationResult,
    required String? verificationId,
    required Function(bool) setLoadingFn,
    required Function onSuccess,
  }) async {
    try {
      final _auth = FirebaseAuth.instance;
      setLoadingFn(true);

      if (kIsWeb) {
        UserCredential userCredential = await confirmationResult!.confirm(
          otp,
        );
        if (userCredential.user != null) {
          Fluttertoast.showToast(msg: "OTP Verified successfully !");
          onSuccess();
        }
      } else {
        final AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: verificationId!,
          smsCode: otp,
        );
        await _auth.currentUser!
            .linkWithCredential(phoneAuthCredential)
            .then((value) async {
          Fluttertoast.showToast(msg: "OTP Verified successfully !");
          onSuccess();
        });
      }
      setLoadingFn(false);
    } on FirebaseAuthException catch (e) {
      setLoadingFn(false);

      if (e.code == "invalid-credential" ||
          e.code == "invalid-verification-code") {
        Fluttertoast.showToast(msg: "Incorrect code! Please re-enter.");
      } else {
        Fluttertoast.showToast(msg: "Something went wrong! Please retry.");
      }
    } catch (e) {
      setLoadingFn(false);
      Fluttertoast.showToast(msg: "Something went wrong! Please retry.");
    }
  }

  static Future<void> resendOTP({
    required String countryCode,
    required String phoneNo,
    required ConfirmationResult? confirmationResult,
    required int? resendToken,
    required Function(bool) setLoadingFn,
  }) async {
    try {
      setLoadingFn(true);
      if (kIsWeb) {
        final ConfirmationResult confirmation =
            await FirebaseAuth.instance.signInWithPhoneNumber(
          '$countryCode$phoneNo',
          RecaptchaVerifier(
            onSuccess: () => debugPrint('reCAPTCHA Completed!'),
            onError: (FirebaseAuthException error) =>
                debugPrint(error.toString()),
            onExpired: () => debugPrint('reCAPTCHA Expired!'),
          ),
        );
        Fluttertoast.showToast(msg: "OTP resent successfully");
        setLoadingFn(false);
      } else {
        await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: '$countryCode$phoneNo',
          forceResendingToken: resendToken,
          verificationCompleted: (PhoneAuthCredential credential) {
            setLoadingFn(false);
          },
          verificationFailed: (FirebaseAuthException e) {
            setLoadingFn(false);
            final error = e.message ?? 'Something went wrong';
            FlushbarHelper.createError(message: error)
                .show(CoreGetters.getContext);
          },
          codeSent: (verificationId, resendToken) {
            setLoadingFn(false);
            Fluttertoast.showToast(msg: "OTP resent successfully");
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            setLoadingFn(false);
          },
        );
      }
    } on FirebaseAuthException catch (e) {
      setLoadingFn(false);
      FlushbarHelper.createError(message: e.message)
          .show(CoreGetters.getContext);
    } catch (e) {
      setLoadingFn(false);
      FlushbarHelper.createError(message: e.toString())
          .show(CoreGetters.getContext);
    }
  }
}
