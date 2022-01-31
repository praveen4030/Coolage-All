import 'package:coolage/application/profile/onboarding/onboarding_bloc.dart';
import 'package:coolage/presentation/auth/pages/create_password_page.dart';
import 'package:coolage/presentation/auth/pages/faculty_info_page.dart';
import 'package:coolage/presentation/auth/pages/student_course_page.dart';
import 'package:coolage/presentation/auth/widgets/verify_with_google.dart';
import 'package:coolage/presentation/core/widgets/onboarding_progress_bar.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/auth/authentication_bloc.dart';

class CollegeEmailIdPage extends StatefulWidget {
  final bool isDuringOnboardingProcess;

  const CollegeEmailIdPage({
    Key? key,
    required this.isDuringOnboardingProcess,
  }) : super(key: key);

  @override
  _CollegeEmailIdPageState createState() => _CollegeEmailIdPageState();
}

class _CollegeEmailIdPageState extends State<CollegeEmailIdPage> {
  final emailTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isEnabled = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          onChanged: () {
            if (emailTEC.text.isNotEmpty &&
                Functions.checkIfDomainMatchesWithCollege(
                    emailTEC.text, context, getUserCollege()) &&
                Functions.validateEmailID(emailTEC.text)) {
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
                  stepNo: 8,
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
                          child: Row(
                            children: [
                              const BackButtonWidget(),
                              const Spacer(),
                              if (widget.isDuringOnboardingProcess)
                                GestureDetector(
                                  onTap: () {
                                    context.read<OnboardingBloc>().add(
                                        const OnboardingEvent
                                                .updateCollegeEmailId(
                                            collegeEmailId: ""));
                                    navigateBaseOnUserType();
                                  },
                                  child: CustomText(
                                    text: "LATER",
                                    color: Kolors.greyBlue.withOpacity(0.5),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const CustomText(
                          text: "Your college email Id",
                          fontSize: 30,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const CustomText(
                          text:
                              "We’ll send you a verification email on this Id. It’s required to access the College specific features ",
                          fontSize: 14,
                          color: Kolors.greyBlue,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: TextFieldLineWidget(
                            controller: emailTEC,
                            hint: "College G-suite email Id",
                            textInputType: TextInputType.emailAddress,
                            validationFn: (val) {
                              final college = getUserCollege();
                              return (val?.isNotEmpty ?? false)
                                  ? Functions.validateEmailID(val!)
                                      ? Functions
                                              .checkIfDomainMatchesWithCollege(
                                                  val, context, college)
                                          ? null
                                          : "It doesn't seems to be your college email ID"
                                      : "Enter valid email id"
                                  : "Enter your college email id";
                            },
                            labelStyle: TextStyle(
                              fontSize: 18,
                              color: Kolors.greyBlue.withOpacity(0.5),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              CustomText(
                                text: "-OR-",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Kolors.greyBlue.withOpacity(0.5),
                              ),
                              const SizedBox(
                                height: 26,
                              ),
                              if (widget.isDuringOnboardingProcess)
                                VerifyWithGoogleLoginWidget(
                                  onSuccessfulVerification: (String emailId) {
                                    context.read<OnboardingBloc>().add(
                                        OnboardingEvent.updateCollegeEmailId(
                                            collegeEmailId: emailId));
                                    navigateBaseOnUserType();
                                  },
                                  college: getUserCollege(),
                                )
                              else
                                VerifyWithGoogleLoginWidget(
                                  onSuccessfulVerification: (String emailId) {
                                    final user = context
                                        .read<AuthenticationBloc>()
                                        .state
                                        .coolUser!;
                                    user.emailId = emailId;
                                    context.read<AuthenticationBloc>().add(
                                        AuthenticationEvent.userModified(
                                            user: user));
                                    context.read<AuthenticationBloc>().add(
                                        AuthenticationEvent.updateUserDetails(
                                            coolUser: user));
                                    Navigator.of(context).pop();
                                  },
                                  college: getUserCollege(),
                                ),
                            ],
                          ),
                        ),
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
          onTap: () {
            if (formKey.currentState!.validate()) {
              if (widget.isDuringOnboardingProcess) {
                context.read<OnboardingBloc>().add(
                    OnboardingEvent.updateCollegeEmailId(
                        collegeEmailId: emailTEC.text));
              }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CreatePasswordPage(
                    isDuringOnboardingProcess: widget.isDuringOnboardingProcess,
                    emailId: emailTEC.text,
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
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

  String getUserCollege() {
    if (widget.isDuringOnboardingProcess) {
      return context.read<OnboardingBloc>().state.userCollege!;
    } else {
      return context.read<AuthenticationBloc>().state.coolUser!.college!;
    }
  }
}
