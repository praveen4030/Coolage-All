import 'package:coolage/application/profile/onboarding/onboarding_bloc.dart';
import 'package:coolage/presentation/auth/pages/faculty_info_page.dart';
import 'package:coolage/presentation/auth/pages/student_course_page.dart';
import 'package:coolage/presentation/core/widgets/onboarding_progress_bar.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';

class CreatePasswordPage extends StatefulWidget {
  final String emailId;
  final bool isDuringOnboardingProcess;
  const CreatePasswordPage({
    Key? key,
    required this.emailId,
    required this.isDuringOnboardingProcess,
  }) : super(key: key);

  @override
  _CreatePasswordPageState createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  final passwordTEC = TextEditingController();
  final confirmPasswordTEC = TextEditingController();
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final _auth = FirebaseAuth.instance;
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          onChanged: () {
            if (passwordTEC.text.isNotEmpty &&
                confirmPasswordTEC.text.isNotEmpty &&
                Functions.isPasswordCompliant(passwordTEC.text) &&
                passwordTEC.text == confirmPasswordTEC.text) {
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
            children: [
              if (widget.isDuringOnboardingProcess)
                const SizedBox(
                  height: 1,
                ),
              if (widget.isDuringOnboardingProcess)
                const OnboardingProgressBar(
                  stepNo: 9,
                ),
              Expanded(
                child: SingleChildScrollView(
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
                          text: "Create a password",
                          fontSize: 30,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const CustomText(
                          text:
                              '''that's atleast 8 characters long & contains\n•a combination of alphabets and numerals \n•special character such as @ # \$ % & ect. ''',
                          fontSize: 14,
                          color: Kolors.greyBlue,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        confirmPasswordForm(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: ContinueButton(
          isEnabled: isEnabled,
          isLoading: isLoading,
          text: widget.isDuringOnboardingProcess ? "CONTINUE" : "REGISTER",
          onTap: () {
            createPassword();
          },
        ),
      ),
    );
  }

  bool ceckForTryOnlyOnce = true;

  Future<void> createPassword() async {
    if (formKey.currentState!.validate()) {
      final phoneUser = _auth.currentUser!;
      setState(() {
        isLoading = true;
      });
      try {
        final emailCredentials = EmailAuthProvider.credential(
            email: widget.emailId, password: passwordTEC.text);
        await phoneUser.linkWithCredential(emailCredentials);
        await phoneUser.sendEmailVerification();
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: "Email verification link sent!");
        if (widget.isDuringOnboardingProcess) {
          navigateBaseOnUserType();
        } else {
          final user = context.read<AuthenticationBloc>().state.coolUser!;
          user.emailId = widget.emailId;
          context
              .read<AuthenticationBloc>()
              .add(AuthenticationEvent.userModified(user: user));
          context
              .read<AuthenticationBloc>()
              .add(AuthenticationEvent.updateUserDetails(coolUser: user));
          Navigator.of(context).popUntil((route) => route.isFirst);
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'requires-recent-login') {
          if (ceckForTryOnlyOnce) {
            ceckForTryOnlyOnce = false;
            await AuthFunctions.reauthenticateUser(onAuthentication: () {
              createPassword();
            });
          } else {
            setState(() {
              isLoading = false;
            });
            FlushbarHelper.createError(message: e.message.toString())
                .show(context);
          }
        } else {
          setState(() {
            isLoading = false;
          });
          FlushbarHelper.createError(message: e.message.toString())
              .show(context);
        }
      } catch (signUpError) {
        setState(() {
          isLoading = false;
        });
        FlushbarHelper.createError(message: signUpError.toString())
            .show(context);
      }
    }
  }

  void navigateBaseOnUserType() {
    final userType = context.read<OnboardingBloc>().state.userType;
    if (userType == Constants.USER_TYPE_STUDENT) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => StudentCourseDetailsPage(),
        ),
      );
    } else if (userType == Constants.USER_TYPE_FACULTY) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => FacultyInfoPage(),
        ),
      );
    }
  }

  Widget confirmPasswordForm() {
    return Container(
      padding: const EdgeInsets.only(right: 56),
      child: Column(
        children: [
          TextFormField(
            controller: passwordTEC,
            validator: (val) {
              return (val?.isEmpty ?? true)
                  ? 'Enter new password'
                  : Functions.isPasswordCompliant(val!)
                      ? null
                      : "Your password is not strong enough";
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
                  iconName: isPasswordVisible ? "visible.png" : "invisible.png",
                  height: 20,
                  width: 20,
                  color: Kolors.greyBlue,
                ),
              ),
              labelText: "New password",
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
          TextFormField(
            controller: confirmPasswordTEC,
            validator: (val) {
              return (val?.isEmpty ?? true)
                  ? 'Please confirm new password'
                  : val == passwordTEC.text
                      ? null
                      : "Password doesn't match";
            },
            style: const TextStyle(
              color: Kolors.greyBlack,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: Fonts.HEADING_FONT,
            ),
            obscureText: !isConfirmPasswordVisible,
            decoration: InputDecoration(
              suffix: GestureDetector(
                onTap: () {
                  setState(() {
                    isConfirmPasswordVisible = !isConfirmPasswordVisible;
                  });
                },
                child: IconImagesWid(
                  iconName: isConfirmPasswordVisible
                      ? "visible.png"
                      : "invisible.png",
                  height: 20,
                  width: 20,
                  color: Kolors.greyBlue,
                ),
              ),
              labelText: "Confirm Password",
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
        ],
      ),
    );
  }
}
