import 'package:coolage/presentation/auth/onboarding/widgets/next_button.dart';
import 'package:coolage/presentation/auth/verify.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
    return Scaffold(
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
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                boxShadow: [
                  BoxShadow(),
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
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    alignment: Alignment.center,
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], //
                            validator: (val) {
                              return val!.isNotEmpty
                                  ? null
                                  : "Enter your phone number";
                            },
                            keyboardType: TextInputType.number,
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
                            if (formKey.currentState!.validate() &&
                                numberTEC.text.length == 10) {
                              await tempPhoneAuth();
                            } else if (numberTEC.text.length != 10) {
                              Fluttertoast.showToast(
                                  msg: 'Please enter a valid phone number');
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
    );
  }

  Future<void> tempPhoneAuth() async {
    setState(() {
      isLoading = true;
    });
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
        final error = e.message ?? 'Something went wrong';
        FlushbarHelper.createError(message: error).show(context);
      },
      codeSent: (verificationId, resendToken) {
        setState(() {
          isLoading = false;
        });
        debugPrint("OTP sent: $verificationId");
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VerifyLoginPage(
            verificationId: verificationId,
            resentToken: resendToken,
            mobileNo: '+91${numberTEC.text}',
          ),
        ));
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        setState(() {
          isLoading = false;
        });
      },
    );
  }
}
