import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/presentation/auth/next_button.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_layout.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/styles.dart';
import 'package:coolage_merchant/presentation/core/widgets/button.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final numberTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? verificationId;
  var firebaseAuth = FirebaseAuth.instance;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Form(
          key: formKey,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Kolors.greyWhite,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/images/coolage.png',
                        height: 36,
                        width: 94,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      'assets/illustrations/welcome.png',
                      height: 430,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              Container(
                height: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Kolors.greyBlue.withOpacity(0.5),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    const CustomText(
                      text: "Enter Phone No.",
                      fontSize: 28,
                      color: Kolors.greyBlue,
                    ),
                    const Spacer(),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Kolors.greyWhite,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          const CustomText(
                            text: "+91 | ",
                            color: Kolors.greyBlue,
                            fontSize: 18,
                          ),
                          Expanded(
                            child: TextFormField(
                              validator: (val) {
                                return val!.isNotEmpty
                                    ? val.length == 10
                                        ? null
                                        : 'Please enter a valid 10 digit number'
                                    : "Enter your phone number";
                              },
                              style: const TextStyle(
                                fontSize: 18,
                                color: Kolors.greyBlack,
                              ),
                              controller: numberTEC,
                              decoration:
                                  Styles.loginFieldInputDecoration(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Spacer(),
                        Container(
                          alignment: Alignment.topRight,
                          child: NextButton(
                            isLoading: isLoading,
                            text: "NEXT",
                            onTap: () async {
                              if (formKey.currentState!.validate()) {
                                await tempPhoneAuth();
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> tempPhoneAuth() async {
    setState(() {
      isLoading = true;
    });
    if (kIsWeb) {
      final ConfirmationResult confirmation =
          await FirebaseAuth.instance.signInWithPhoneNumber(
        '+91${numberTEC.text}',
        RecaptchaVerifier(
          onSuccess: () => debugPrint('reCAPTCHA Completed!'),
          onError: (FirebaseAuthException error) =>
              debugPrint(error.toString()),
          onExpired: () => debugPrint('reCAPTCHA Expired!'),
        ),
      );

      // setState(() {
      //   isLoading = false;
      // });
      debugPrint("OTP sent: ${confirmation.verificationId}");
      AutoRouter.of(context).push(
        VerifyLoginPageRoute(
          verificationId: verificationId,
          resentToken: 0,
          mobileNo: '+91${numberTEC.text}',
          result: confirmation,
        ),
      );
    } else {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${numberTEC.text}',
        verificationCompleted: (PhoneAuthCredential credential) {
          setState(() {
            isLoading = false;
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          setState(() {
            isLoading = false;
          });
          FlushbarHelper.createError(message: "${e.message}").show(context);
        },
        codeSent: (verificationId, resendToken) {
          setState(() {
            isLoading = false;
          });
          debugPrint("OTP sent: $verificationId");
          AutoRouter.of(context).push(
            VerifyLoginPageRoute(
              verificationId: verificationId,
              resentToken: resendToken,
              mobileNo: '+91${numberTEC.text}',
            ),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          setState(() {
            isLoading = false;
          });
        },
      );
    }
  }
}
