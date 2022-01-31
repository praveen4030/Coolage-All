import 'package:core/core.dart';
import 'package:core/ui/widgets/country_code_widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? verificationId;
  final firebaseAuth = FirebaseAuth.instance;
  CountryCode countryCode = CountryCode.fromDialCode("+91");
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
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
                  text: "Forgot Password ?",
                  fontSize: 30,
                ),
                const SizedBox(
                  height: 12,
                ),
                const CustomText(
                  text:
                      "That's ok, it happens ! Enter your college email id associated with your account below. ",
                  fontSize: 14,
                  color: Kolors.greyBlue,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFieldLineWidget(
                        textInputType: TextInputType.emailAddress,
                        controller: emailTEC,
                        hint: "College email id",
                        validationFn: (val) {
                          return val?.isNotEmpty ?? false
                              ? Functions.validateEmailID(val!)
                                  ? null
                                  : 'Enter valid college email id'
                              : "Enter phone number";
                        },
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Kolors.greyBlue.withOpacity(0.5),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomSheet: ContinueButton(
          isLoading: isLoading,
          isEnabled: true,
          onTap: () {
            setState(() {
              isLoading = true;
            });
            sendVerificationEmailLink(context);
          },
        ),
      ),
    );
  }

  Future<void> sendVerificationEmailLink(BuildContext context) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailTEC.text);
      FlushbarHelper.createSuccess(
              message: "Password reset link sent successfully!")
          .show(context);
    } on FirebaseAuthException catch (e) {
      FlushbarHelper.createError(message: e.message.toString()).show(context);
    } catch (e) {
      FlushbarHelper.createError(message: e.toString()).show(context);
    }
    setState(() {
      isLoading = false;
    });
  }

  Future<void> sendPasswordResetEmail(String email) async {
    return FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
