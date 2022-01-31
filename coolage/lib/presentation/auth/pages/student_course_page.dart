import 'package:college/application/college/college_bloc.dart';
import 'package:college/college.dart';
import 'package:coolage/presentation/auth/redirect_based_on_details.dart';
import 'package:coolage/presentation/base/base.dart';
import 'package:coolage/presentation/core/widgets/onboarding_progress_bar.dart';
import 'package:core/core.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coolage/application/profile/onboarding/onboarding_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';

class StudentCourseDetailsPage extends StatefulWidget {
  StudentCourseDetailsPage({Key? key}) : super(key: key);

  @override
  _StudentCourseDetailsPageState createState() =>
      _StudentCourseDetailsPageState();
}

class _StudentCourseDetailsPageState extends State<StudentCourseDetailsPage> {
  String? degree;
  String? department;
  String? year;
  String? batchStart;
  String? batchFinish;
  bool isEnabled = false;

  void checkIfEnabled() {
    if (degree != null &&
        department != null &&
        year != null &&
        batchStart != null &&
        batchFinish != null) {
      setState(() {
        isEnabled = true;
      });
    } else {
      setState(() {
        isEnabled = false;
      });
    }
  }

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
                        text: "And finally,\nyour course",
                        fontSize: 30,
                      ),
                      const SizedBox(
                        height: 56,
                      ),
                      DropDownList(
                        list: Functions.getUserCollegeDegrees(context),
                        onChanged: (value) {
                          setState(() {
                            degree = value as String;
                          });
                          selectBatchEnd();
                          checkIfEnabled();
                        },
                        value: degree,
                        hintWidget: CustomText(
                          text: "Degree",
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
                          selectBatchEnd();
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
                      const SizedBox(
                        height: 40,
                      ),
                      DropDownList(
                        list: Functions.getYearsList(context, degree),
                        onChanged: (String? value) {
                          if (value?.isNotEmpty ?? false) {
                            final yearVal = value!.substring(0, 1);
                            setState(() {
                              year = yearVal;
                            });
                            checkIfEnabled();
                          }
                        },
                        value: year != null
                            ? "${Functions.getWithSuffix(int.parse(year!))} year"
                            : null,
                        hintWidget: CustomText(
                          text: "Year",
                          color: Kolors.greyBlue.withOpacity(0.5),
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      batchWidgtet(),
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
              isLoading: state.isLoading,
              isEnabled: isEnabled,
              onTap: () async {
                if ((degree?.isNotEmpty ?? false) &&
                    (department?.isNotEmpty ?? false) &&
                    (year?.isNotEmpty ?? false) &&
                    (batchStart?.isNotEmpty ?? false) &&
                    (batchFinish?.isNotEmpty ?? false)) {
                  context
                      .read<OnboardingBloc>()
                      .add(OnboardingEvent.updateStudentDetails(
                        department: department!,
                        degree: degree!,
                        year: year!,
                        batchStart: batchStart!,
                        batchFinish: batchFinish!,
                      ));
                  await Future.delayed(const Duration(milliseconds: 500));
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

  Widget batchWidgtet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Batch",
          color: Kolors.greyBlue.withOpacity(0.5),
          fontSize: 12,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            dropDownButton(
              hint: "start",
              onChange: (String val) {
                setState(() {
                  batchStart = val;
                });
                selectBatchEnd();
                checkIfEnabled();
              },
              list: Functions.getBatchStartList(),
              value: batchStart,
            ),
            const CustomText(
              text: "  -  ",
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Kolors.greyBlue,
            ),
            dropDownButton(
              hint: "finish",
              onChange: (String val) {
                setState(() {
                  batchFinish = val;
                });

                checkIfEnabled();
              },
              list: batchStart != null
                  ? Functions.getBatchFinishList(batchStart!)
                  : [],
              value: batchFinish,
            ),
          ],
        ),
      ],
    );
  }

  Widget dropDownButton({
    required String hint,
    required Function onChange,
    required String? value,
    required List<String> list,
  }) {
    return Container(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          value: value,
          icon: null,
          iconSize: 0,
          alignment: Alignment.center,
          dropdownMaxHeight: 200,
          itemWidth: 100,
          buttonWidth: 150,
          isExpanded: true,
          buttonHeight: 150,
          customButton: Container(
            width: 100,
            height: 42,
            padding: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Kolors.greyBlue.withOpacity(0.5),
              ),
            ),
            child: Center(
              child: Text(
                value ?? hint,
                style: value != null
                    ? const TextStyle(
                        fontSize: 18,
                        color: Kolors.greyBlack,
                        fontFamily: Fonts.HEADING_FONT,
                        fontWeight: FontWeight.w500,
                      )
                    : const TextStyle(
                        fontFamily: Fonts.CONTENT_FONT,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Kolors.greyBlue,
                      ),
              ),
            ),
          ),
          style: const TextStyle(
            fontSize: 18,
            color: Kolors.greyBlack,
            fontFamily: Fonts.HEADING_FONT,
            fontWeight: FontWeight.w500,
          ),
          items: list.map((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                  color: Kolors.greyBlack,
                  fontFamily: Fonts.HEADING_FONT,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          }).toList(),
          onChanged: (val) {
            onChange(val);
          },
        ),
      ),
    );
  }

  void selectBatchEnd() {
    if (department != null && degree != null && batchStart != null) {
      final programmesMap =
          CollegeGetters.getCurrentUserCollegeProgrammes(context);
      final programmesWithDuration = CoreGetters.getProgrammes(context);
      final programsList = programmesMap.keys.toList();
      for (final program in programsList) {
        final degreesList = programmesMap[program] ?? [];
        if (degreesList.contains(degree)) {
          int duration = programmesWithDuration[program]![degree] ?? 0;
          batchFinish = (int.parse(batchStart!) + duration).toString();
        }
      }
      setState(() {});
    }
  }
}
