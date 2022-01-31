import 'package:college/application/college/college_bloc.dart';
import 'package:coolage/application/profile/onboarding/onboarding_bloc.dart';
import 'package:coolage/presentation/auth/pages/college_emailid_page.dart';
import 'package:coolage/presentation/auth/pages/faculty_info_page.dart';
import 'package:coolage/presentation/auth/pages/student_course_page.dart';
import 'package:coolage/presentation/auth/redirect_based_on_details.dart';
import 'package:coolage/presentation/core/widgets/onboarding_progress_bar.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SelectCollegePage extends StatefulWidget {
  SelectCollegePage({Key? key}) : super(key: key);

  @override
  _SelectCollegePageState createState() => _SelectCollegePageState();
}

class _SelectCollegePageState extends State<SelectCollegePage> {
  String? college;
  bool isEnabled = false;

  @override
  void initState() {
    super.initState();
      context
          .read<CoolageDetailsBloc>()
          .add(const CoolageDetailsEvent.started());
    
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoolageDetailsBloc, CoolageDetailsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                const SizedBox(
                  height: 1,
                ),
                OnboardingProgressBar(
                  stepNo: getUserType() == Constants.USER_TYPE_GUEST ||
                          getUserType() == Constants.USER_TYPE_STAFF
                      ? 9
                      : 7,
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
                          CustomText(
                            text: getUserType() == Constants.USER_TYPE_GUEST
                                ? "College you are visiting"
                                : "Your college",
                            fontSize: 30,
                          ),
                          // const SizedBox(
                          //   height: 20,
                          // ),
                          // const GetFromLinkedInWidget(),
                          const SizedBox(
                            height: 42,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 56),
                            child: DropDownList(
                              list: Functions.getCollegesList(context),
                              onHintTap: () {
                                Fluttertoast.showToast(msg: "icjv");
                              },
                              onChanged: (String value) {
                                setState(() {
                                  college = value;
                                  isEnabled = true;
                                });
                              },
                              value: college,
                              hintWidget: CustomText(
                                text: "Select College",
                                color: Kolors.greyBlue.withOpacity(0.5),
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            bottomSheet: BlocConsumer<OnboardingBloc, OnboardingState>(
              listener: (context, state) {
                state.actionFailureOpt.fold(() {}, (either) {
                  either.fold(
                    (failure) {
                      FlushbarHelper.createError(message: failure.error)
                          .show(context);
                    },
                    (msg) {
                      Fluttertoast.showToast(msg: msg);
                      AuthNavigation.redirectUserBasedOnDetails(context);
                    },
                  );
                });
              },
              builder: (context, onboardingState) {
                return BlocConsumer<CollegeBloc, CollegeState>(
                  listener: (context, state) {
                    state.actionResultOpt.fold(() {}, (_) {
                      navigateAccordingly();
                    });
                  },
                  builder: (context, state) {
                    return ContinueButton(
                      isLoading: state.isCollegeLoading ??
                          false || onboardingState.isLoading,
                      isEnabled: isEnabled,
                      text: getUserType() == Constants.USER_TYPE_GUEST ||
                              getUserType() == Constants.USER_TYPE_STAFF
                          ? "Get Started"
                          : "CONTINUE",
                      onTap: () async {
                        if (college?.isNotEmpty ?? false) {
                          context.read<OnboardingBloc>().add(
                              OnboardingEvent.updateCollege(college: college!));
                          final userType =
                              context.read<OnboardingBloc>().state.userType;
                          if (userType == Constants.USER_TYPE_STUDENT ||
                              userType == Constants.USER_TYPE_FACULTY) {
                            context
                                .read<CollegeBloc>()
                                .add(CollegeEvent.getCollegeDetails(
                                  userCollege: college,
                                ));
                          } else {
                            //for guest and staff
                            await Future.delayed(const Duration(milliseconds: 500));
                            context
                                .read<OnboardingBloc>()
                                .add(const OnboardingEvent.saveProfileDetails());
                          }
                        } else {
                          Fluttertoast.showToast(
                              msg: "Select the required details to continue");
                        }
                      },
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  void navigateAccordingly() {
    final email = FirebaseAuth.instance.currentUser!.email;
    if (email == null ||
        !Functions.checkIfDomainMatchesWithCollege(email, context, college!)) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const CollegeEmailIdPage(
            isDuringOnboardingProcess: true,
          ),
        ),
      );
    } else {
      context
          .read<OnboardingBloc>()
          .add(OnboardingEvent.updateCollegeEmailId(collegeEmailId: email));
      navigateBaseOnUserType();
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

  String getUserType() {
    return context.read<OnboardingBloc>().state.userType;
  }
}
