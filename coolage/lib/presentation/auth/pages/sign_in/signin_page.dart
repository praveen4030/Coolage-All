import 'package:coolage/presentation/auth/pages/sign_in/sign_in_email_widget.dart';
import 'package:coolage/presentation/auth/pages/sign_in/sign_in_mobile.dart';
import 'package:coolage/presentation/auth/widgets/google_login.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Kolors.greyWhite,
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
                  text: "Welcome Back!",
                  fontSize: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SignInEmailWidget(),
                const SizedBox(
                  height: 48,
                ),
                const CustomText(
                  text: "College email id not registered?",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 8,
                ),
                const SignInMobileWidget(),
                const SizedBox(
                  height: 48,
                ),
                Center(
                  child: Column(
                    children: [
                      CustomText(
                        text: "OR",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Kolors.greyBlue.withOpacity(0.5),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const GoogleLoginWidget(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
