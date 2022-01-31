import 'package:coolage/application/profile/onboarding/onboarding_bloc.dart';
import 'package:coolage/presentation/auth/pages/select_college_page.dart';
import 'package:coolage/presentation/auth/widgets/user_type_select.dart';
import 'package:coolage/presentation/core/widgets/onboarding_progress_bar.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SelectUserTypePage extends StatefulWidget {
  SelectUserTypePage({
    Key? key,
  }) : super(key: key);

  @override
  _SelectUserTypePageState createState() => _SelectUserTypePageState();
}

class _SelectUserTypePageState extends State<SelectUserTypePage> {
  String? userType;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 1,
            ),
            const OnboardingProgressBar(
              stepNo: 6,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
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
                              text: "You are a",
                              fontSize: 30,
                            ),
                            const SizedBox(
                              height: 84,
                            ),
                          ],
                        ),
                      ),
                      GridView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 72,
                        ),
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20, top: 20),
                            child: UserTypeSelectWidget(
                              icon: 'student',
                              isSelected:
                                  userType == Constants.USER_TYPE_STUDENT,
                              onTap: () {
                                setState(() {
                                  userType = Constants.USER_TYPE_STUDENT;
                                });
                                onUserTypeTap();
                              },
                              text: 'Student',
                              infoText: Constants.studentInfo,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20, top: 20),
                            child: UserTypeSelectWidget(
                              icon: 'faculty',
                              isSelected:
                                  userType == Constants.USER_TYPE_FACULTY,
                              onTap: () {
                                setState(() {
                                  userType = Constants.USER_TYPE_FACULTY;
                                });
                                onUserTypeTap();
                              },
                              text: 'Faculty',
                              infoText: Constants.facultyInfo,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, bottom: 20),
                            child: UserTypeSelectWidget(
                              icon: 'staff',
                              isSelected: userType == Constants.USER_TYPE_STAFF,
                              onTap: () {
                                setState(() {
                                  userType = Constants.USER_TYPE_STAFF;
                                });
                                onUserTypeTap();
                              },
                              text: 'Staff',
                              infoText: Constants.staffInfo,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(right: 20, bottom: 20),
                            child: UserTypeSelectWidget(
                              icon: 'guest',
                              isSelected: userType == Constants.USER_TYPE_GUEST,
                              onTap: () {
                                setState(() {
                                  userType = Constants.USER_TYPE_GUEST;
                                });
                                onUserTypeTap();
                              },
                              text: 'Guest',
                              infoText: Constants.guestInfo,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        // bottomSheet: BlocConsumer<CoolageDetailsBloc, CoolageDetailsState>(
        //   listener: (context, state) {
        //     state.actionResultOpt.fold(() {}, (_) {
        //       navigateBaseOnUserType();
        //     });
        //   },
        //   builder: (context, state) {
        //     return ContinueButton(
        //       isEnabled: true,
        //       isLoading: state.isLoading,
        //       onTap: () {
        //         if (userType?.isNotEmpty ?? false) {
        //           context
        //               .read<OnboardingBloc>()
        //               .add(OnboardingEvent.updateUserType(userType: userType!));
        //           context
        //               .read<CoolageDetailsBloc>()
        //               .add(const CoolageDetailsEvent.started());
        //         } else {
        //           Fluttertoast.showToast(
        //               msg: "Select the required details to continue");
        //         }
        //       },
        //     );
        //   },
        // ),
      ),
    );
  }

  Future<void> onUserTypeTap() async {
    if (userType?.isNotEmpty ?? false) {
      context
          .read<OnboardingBloc>()
          .add(OnboardingEvent.updateUserType(userType: userType!));
      // context
      //     .read<CoolageDetailsBloc>()
      //     .add(const CoolageDetailsEvent.started());
      await Future.delayed(const Duration(milliseconds: 800));
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SelectCollegePage(),
        ),
      );
    }
  }
}
