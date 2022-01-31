import 'package:coolage/presentation/auth/pages/forgot_password_page.dart';
import 'package:coolage/presentation/auth/pages/no_user_found.dart';
import 'package:coolage/presentation/auth/pages/user_name_page.dart';
import 'package:coolage/presentation/auth/redirect_based_on_details.dart';
import 'package:coolage/presentation/base/base.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/auth/authentication_bloc.dart';

class SignInEmailWidget extends StatefulWidget {
  const SignInEmailWidget({Key? key}) : super(key: key);

  @override
  State<SignInEmailWidget> createState() => _SignInEmailWidgetState();
}

class _SignInEmailWidgetState extends State<SignInEmailWidget> {
  final emailTEC = TextEditingController();
  final passwordTEC = TextEditingController();
  bool isPasswordVisible = false;
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final _auth = FirebaseAuth.instance;
  FocusNode myEmailFocusNode = FocusNode();
  bool isEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      onChanged: () {
        if (emailTEC.text.isNotEmpty &&
            passwordTEC.text.isNotEmpty &&
            Functions.validateEmailID(emailTEC.text) &&
            Functions.isPasswordCompliant(passwordTEC.text)) {
          setState(() {
            isEnabled = true;
          });
        } else {
          setState(() {
            isEnabled = false;
          });
        }
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFieldLineWidget(
                  controller: emailTEC,
                  textInputType: TextInputType.emailAddress,
                  hint: "College Email id",
                  validationFn: (val) {
                    return (val?.isNotEmpty ?? false)
                        ? Functions.validateEmailID(val!)
                            ? null
                            : "Enter valid email id"
                        : "Enter your college email id";
                  },
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Kolors.greyBlue.withOpacity(0.5),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextFormField(
                  controller: passwordTEC,
                  validator: (val) {
                    return (val?.isNotEmpty ?? false)
                        ? Functions.isPasswordCompliant(val!)
                            ? null
                            : 'Please enter valid password'
                        : 'Please enter password';
                  },
                  style: const TextStyle(
                    color: Kolors.greyBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: Fonts.HEADING_FONT,
                  ),
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    suffix: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      child: IconImagesWid(
                        iconName:
                            isPasswordVisible ? "visible.png" : "invisible.png",
                        height: 20,
                        width: 20,
                        color: Kolors.greyBlue,
                      ),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Kolors.greyBlue.withOpacity(0.5),
                      fontWeight: FontWeight.w300,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Kolors.greyBlue,
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Kolors.greyBlue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordPage(),
                      ),
                    );
                  },
                  child: const CustomText(
                    text: "Forgot Password ?",
                    color: Kolors.greyBlue,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 52,
                ),
              ],
            ),
          ),
          ContinueButton(
            isEnabled: isEnabled,
            isLoading: isLoading,
            isOnlyButton: true,
            text: "Login",
            onTap: () {
              signInUser();
            },
          ),
        ],
      ),
    );
  }

  Future<void> signInUser() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      try {
        await _auth.signInWithEmailAndPassword(
          email: emailTEC.text,
          password: passwordTEC.text,
        );
        if (_auth.currentUser != null) {
          redirectToHomePage();
        } else {
          setState(() {
            isLoading = false;
          });
        }
      } catch (e) {
        FlushbarHelper.createError(message: 'Something went wrong!')
            .show(context);
        setState(() {
          isLoading = false;
        });
        if (e is FirebaseAuthException) {
          if (e.code == "user-not-found") {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NoUserFoundPage(phoneNo: emailTEC.text)));
            return;
          }
        }
        FlushbarHelper.createError(message: e.toString()).show(context);
      }
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> redirectToHomePage() async {
    final checkIfExists = await FirebaseFunctions.checkIfUserExists();
    if (checkIfExists) {
      AuthNavigation.redirectUserBasedOnDetails(context);
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const UserNamePage()));
    }
  }
}
