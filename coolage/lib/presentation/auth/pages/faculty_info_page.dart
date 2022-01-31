import 'package:college/application/college/college_bloc.dart';
import 'package:coolage/application/profile/onboarding/onboarding_bloc.dart';
import 'package:coolage/presentation/auth/redirect_based_on_details.dart';
import 'package:coolage/presentation/core/widgets/onboarding_progress_bar.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FacultyInfoPage extends StatefulWidget {
  FacultyInfoPage({Key? key}) : super(key: key);

  @override
  _FacultyInfoPageState createState() => _FacultyInfoPageState();
}

class _FacultyInfoPageState extends State<FacultyInfoPage> {
  String? department;
  String? designation;
  bool isEnabled = false;
  @override
  Widget build(BuildContext context) {
    final collegeModel = context.read<CollegeBloc>().state.collegeModel!;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 1,
            ),
            const OnboardingProgressBar(
              stepNo: 10,
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
                        text: "What's your",
                        fontSize: 30,
                      ),
                      const SizedBox(
                        height: 92,
                      ),
                      DropDownList(
                        list: Lists.getDesignationsList,
                        onChanged: (value) {
                          setState(() {
                            designation = value as String;
                          });
                          checkIfEnabled();
                        },
                        value: designation,
                        hintWidget: CustomText(
                          text: "Designation",
                          color: Kolors.greyBlue.withOpacity(0.5),
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      DropDownList(
                        list: collegeModel.departments,
                        onChanged: (String value) {
                          setState(() {
                            department = value;
                          });
                          checkIfEnabled();
                        },
                        value: department,
                        hintWidget: CustomText(
                          text: "Department",
                          color: Kolors.greyBlue.withOpacity(0.5),
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
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
          builder: (context, state) {
            return ContinueButton(
              isEnabled: isEnabled,
              isLoading: state.isLoading,
              onTap: () async {
                if ((designation?.isNotEmpty ?? false) &&
                    (department?.isNotEmpty ?? false)) {
                  context.read<OnboardingBloc>().add(
                      OnboardingEvent.updateFacultyDetails(
                          department: department!, designation: designation!));
                  await Future.delayed(const Duration(milliseconds: 200));
                  context
                      .read<OnboardingBloc>()
                      .add(const OnboardingEvent.saveProfileDetails());
                } else {
                  Fluttertoast.showToast(
                      msg: "Select the required details to continue");
                }
              },
              text: "Get started",
            );
          },
        ),
      ),
    );
  }

  void checkIfEnabled() {
    if (designation != null && department != null) {
      setState(() {
        isEnabled = true;
      });
    } else {
      setState(() {
        isEnabled = false;
      });
    }
  }
}
