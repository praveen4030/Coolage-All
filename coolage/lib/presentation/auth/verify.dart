import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/presentation/auth/redirect_based_on_details.dart';
import 'package:coolage/presentation/auth/user_details.dart';
import 'package:coolage/presentation/base/base.dart';
import 'package:core/core.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class VerifyLoginPage extends StatefulWidget {
  final String? verificationId;
  final int? resentToken;
  final String? mobileNo;
  const VerifyLoginPage({
    Key? key,
    @required this.verificationId,
    @required this.resentToken,
    @required this.mobileNo,
  }) : super(key: key);

  @override
  _VerifyLoginPageState createState() => _VerifyLoginPageState();
}

class _VerifyLoginPageState extends State<VerifyLoginPage> {
  final TextEditingController otpTEC = TextEditingController(text: "");
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/coolage.png',
                  height: 36,
                  width: 94,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "We've sent you an SMS with a 6-digit verification code to ${widget.mobileNo!}",
                style: const TextStyle(
                  fontSize: 16,
                  color: Kolors.fontColor,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              PinCodeFields(
                textEditingController: otpTEC,
              ),
              const SizedBox(height: 50),
              Center(
                child: PurpleGradientButton(
                  width: 150,
                  isLoading: isLoading,
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      await signIn();
                    }
                  },
                  text: "VERIFY",
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Haven't received your OTP yet?",
              style: TextStyle(
                fontSize: 14,
                color: Kolors.fontColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                resentOTP();
              },
              child: const Text(
                "Resend",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: Fonts.CONTENT_FONT,
                  color: Kolors.secondaryColor1,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> signIn() async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    setState(() {
      isLoading = true;
    });
    final AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
      verificationId: widget.verificationId!,
      smsCode: otpTEC.text,
    );
    await _auth.signInWithCredential(phoneAuthCredential).then((value) async {
      Fluttertoast.showToast(msg: "Sign In Successful");
      await checkIfUserExists();
      setState(() {
        isLoading = true;
      });
    }).catchError((e) {
      setState(() {
        isLoading = true;
      });
      Fluttertoast.showToast(msg: "Sign In Failed ${e.toString()}");
    });
  }

  Future<void> checkIfUserExists() async {
    final checkIfExists = await FirebaseFunctions.checkIfUserExists();
    if (checkIfExists) {
      await AuthNavigation.redirectUserBasedOnDetails(context);
    } else {
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const UserDetailsPage()));
    }
  }

  Future<void> updateDeviceToken() async {
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

  Future<void> resentOTP() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: widget.mobileNo!,
      forceResendingToken: widget.resentToken,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (verificationId, resendToken) {
        debugPrint("OTP sent: $verificationId");
        Fluttertoast.showToast(msg: "OTP resent successfully");
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
