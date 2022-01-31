import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_admin/presentation/base/base.dart';
import 'package:coolage_admin/presentation/core/functions/app_start_function.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/domain/auth/fetch_user_details.dart';
import 'package:user/user.dart';

class VerifyLoginPage extends StatefulWidget {
  final String? verificationId;
  final int? resentToken;
  final String? mobileNo;
  final String countryCode;

  const VerifyLoginPage({
    Key? key,
    @required this.verificationId,
    @required this.resentToken,
    @required this.mobileNo,
    required this.countryCode,
  }) : super(key: key);

  @override
  _VerifyLoginPageState createState() => _VerifyLoginPageState();
}

class _VerifyLoginPageState extends State<VerifyLoginPage> {
  final TextEditingController otpTEC = TextEditingController(text: "");
  final formKey = GlobalKey<FormState>();
  bool isEnabled = false;
  bool isResendingOtp = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          onChanged: () {
            if (otpTEC.text.length == 6) {
              setState(() {
                isEnabled = true;
              });
            } else {
              setState(() {
                isEnabled = false;
              });
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 32, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 24),
                        child: const BackButtonWidget(),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const CustomText(
                        text: "Verification Code",
                        fontSize: 30,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      RichText(
                        text: TextSpan(
                          text:
                              "Enter the code you just recived at ${Functions.getHiddenPhoneNo(widget.mobileNo!)}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Kolors.greyBlue,
                            fontFamily: Fonts.CONTENT_FONT,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: " change ?",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).pop();
                                },
                              style: const TextStyle(
                                fontSize: 14,
                                color: Kolors.primaryColor1,
                                fontFamily: Fonts.CONTENT_FONT,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      OTPPinFields(
                        textEditingController: otpTEC,
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      // const Spacer(),
                      Row(
                        children: [
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                text: "Didn't recived anything? ",
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Kolors.greyBlue,
                                  fontFamily: Fonts.CONTENT_FONT,
                                  fontWeight: FontWeight.w400,
                                ),
                                children: [
                                  TextSpan(
                                    text: isResendingOtp
                                        ? "Resending Code..."
                                        : " Resend Code ",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        resentOTP();
                                      },
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Kolors.primaryColor1,
                                      fontFamily: Fonts.CONTENT_FONT,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (isResendingOtp)
                            Container(
                              height: 20,
                              width: 20,
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation(
                                    Kolors.primaryColor1),
                              ),
                            )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: ContinueButton(
          isEnabled: isEnabled,
          isLoading: isLoading,
          onTap: () {
            signIn();
          },
        ),
      ),
    );
  }

  Future<void> signIn() async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    setState(() {
      isLoading = true;
    });
    try {
      final AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId!,
        smsCode: otpTEC.text,
      );
      await _auth.signInWithCredential(phoneAuthCredential).then((value) async {
        Fluttertoast.showToast(msg: "OTP Verified successfully !");
        await checkIfUserExists();
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == "invalid-credential" ||
          e.code == "invalid-verification-code") {
        Fluttertoast.showToast(msg: "Incorrect code! Please re-enter.");
      } else {
        Fluttertoast.showToast(msg: "Something went wrong! Please retry.");
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      Fluttertoast.showToast(msg: "Something went wrong! Please retry.");
    }
  }

  Future<void> checkIfUserExists() async {
    final user =
        await FetchUserDetails.getUserFromUid(Getters.getCurrentUserUid());
    setState(() {
      isLoading = false;
    });
    if (user != null && user.isAdmin!) {
      context
          .read<AuthenticationBloc>()
          .add(AuthenticationEvent.userModified(user: user));
      // AppStartFunction.startingBlocEvents(context);
      await Future.delayed(const Duration(milliseconds: 500));
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => BasePage()));
    } else {
      Fluttertoast.showToast(
          msg:
              "You are not an authorised admin! Please contact Coolage team for more details!");
    }
  }

  Future<void> resentOTP() async {
    setState(() {
      isResendingOtp = true;
    });
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: widget.mobileNo!,
      forceResendingToken: widget.resentToken,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (verificationId, resendToken) {
        setState(() {
          isResendingOtp = false;
        });
        debugPrint("OTP sent: $verificationId");
        Fluttertoast.showToast(msg: "OTP resent successfully");
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
