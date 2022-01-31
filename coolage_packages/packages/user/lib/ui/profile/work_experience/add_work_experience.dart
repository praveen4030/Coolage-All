import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user/application/profile/work_experience/work_experience_bloc.dart';
import 'package:user/ui/profile/widgets/add_profile_header.dart';
import 'package:user/ui/profile/widgets/date_drop_down_till.dart';
import 'package:user/ui/profile/widgets/date_drop_down_widget.dart';
import 'package:user/ui/profile/widgets/select_date.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class AddWorkExperienceWidget extends StatefulWidget {
  final WorkExperienceModel? model;
  const AddWorkExperienceWidget({
    Key? key,
    this.model,
  }) : super(key: key);

  @override
  _AddWorkExperienceWidgetState createState() =>
      _AddWorkExperienceWidgetState();
}

class _AddWorkExperienceWidgetState extends State<AddWorkExperienceWidget> {
  bool isEditingMode = false;
  bool isTillPresentSelected = false;

  final formKey = GlobalKey<FormState>();
  final titleTEC = TextEditingController();
  final organisationTEC = TextEditingController();
  final descTEC = TextEditingController();
  String? workType;
  DateTime? startDate;
  DateTime? endDate;

  bool isEdit = false;
  @override
  void initState() {
    super.initState();
    if (widget.model != null) {
      isEdit = true;
      titleTEC.text = widget.model!.title ?? '';
      startDate = widget.model!.durationFrom?.toDate();
      endDate = widget.model!.durationTill?.toDate();
      organisationTEC.text = widget.model!.organisation ?? '';
      descTEC.text = widget.model!.description ?? '';
      workType = widget.model!.type ?? '';
      isTillPresentSelected = widget.model!.isTillPresent ?? false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkExperienceBloc, WorkExperienceState>(
      listener: (context, state) {
        state.actionFailureOpt.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                Navigator.of(context).pop();
                FlushbarHelper.createError(message: failure.error)
                    .show(context);
              },
              (message) {
                Navigator.of(context).pop();
                Fluttertoast.showToast(msg: message);
              },
            );
          },
        );
      },
      builder: (context, state) {
        bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;

        return Container(
          padding: MediaQuery.of(context).viewInsets,
          child: Form(
            key: formKey,
            onChanged: () {
              setState(() {
                isEditingMode = true;
              });
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AddProfileHeader(
                  isSavingLoading: state.isLoading,
                  title:
                      isEdit ? "Edit work experience" : "Add work experience",
                  onSaveTap: () {
                    if (startDate == null ||
                        (endDate == null && !isTillPresentSelected) ||
                        workType == null) {
                      Fluttertoast.showToast(msg: "Please fill all the fields");
                      return;
                    }
                    final model = WorkExperienceModel(
                      title: titleTEC.text,
                      description: descTEC.text,
                      organisation: organisationTEC.text,
                      type: workType,
                      isTillPresent: isTillPresentSelected,
                      durationFrom: Timestamp.fromDate(startDate!),
                      durationTill:
                          endDate != null ? Timestamp.fromDate(endDate!) : null,
                      isVisible: isEdit ? widget.model!.isVisible : true,
                      id: isEdit ? widget.model!.id : null,
                    );
                    if (isEdit) {
                      context
                          .read<WorkExperienceBloc>()
                          .add(WorkExperienceEvent.addWorkExperience(
                            onAdd: (WorkExperienceModel workExperienceModel) {
                              final user = Getters.getCurrentUser(context);
                              user.studentProfileModel!.workExperienceModel!
                                  .update(widget.model!.id!, (_) => model);
                              context.read<AuthenticationBloc>().add(
                                  AuthenticationEvent.userModified(user: user));
                            },
                            model: model,
                          ));
                    } else {
                      context.read<WorkExperienceBloc>().add(
                            WorkExperienceEvent.addWorkExperience(
                              onAdd: (WorkExperienceModel workExperienceModel) {
                                final user = Getters.getCurrentUser(context);
                                user.studentProfileModel!.workExperienceModel!
                                    .putIfAbsent(workExperienceModel.id!,
                                        () => workExperienceModel);
                                context.read<AuthenticationBloc>().add(
                                    AuthenticationEvent.userModified(
                                        user: user));
                              },
                              model: model,
                            ),
                          );
                    }
                  },
                  isEditingMode: isEditingMode,
                ),
                Container(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height *
                          (isKeyboardOpen ? 0.4 : 0.8)),
                  child: SingleChildScrollView(
                    child: Container(
                      color: Kolors.greyWhite,
                      child: Column(
                        children: [
                          headerWidget(),
                          const SizedBox(
                            height: 16,
                          ),
                          durationWidget(),
                          const SizedBox(
                            height: 16,
                          ),
                          descriptionWidget(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget headerWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.white,
      child: Column(
        children: [
          TextFieldLineWidget(
            controller: titleTEC,
            hint: "Title",
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : "Please add title";
            },
          ),
          const SizedBox(
            height: 30,
          ),
          DropDownList(
            hint: "Work Type",
            list: const [
              "Job",
              "Internship",
              "Volunteering",
              "Other",
            ],
            value: workType,
            onChanged: (val) {
              setState(() {
                workType = val as String;
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFieldLineWidget(
            controller: organisationTEC,
            hint: "Organisation",
            validationFn: (val) {
              return val?.isNotEmpty ?? false
                  ? null
                  : "Please add organisation";
            },
          ),
        ],
      ),
    );
  }

  Widget durationWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.white,
      child: Column(
        children: [
          const CardHeaderTextWidget(
            text: "Duration",
          ),
          Row(
            children: [
              Expanded(
                child: DateDropDownWidget(
                  hint: "From",
                  onTap: (date) {
                    if (date != null) {
                      if (endDate != null) {
                        if (!date!.difference(endDate).isNegative) {
                          Fluttertoast.showToast(
                              msg: '"From" date cannnot be after "Till" date');
                          return;
                        }
                      }
                      setState(() {
                        isEditingMode = true;
                        startDate = date as DateTime;
                      });
                    }
                  },
                  selectedDate: startDate,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: DateDropDownTillWidget(
                  hint: "Till",
                  isTillPresent: isTillPresentSelected,
                  onSelectTillPresent: () {
                    setState(() {
                      isEditingMode = true;
                      endDate = null;
                      isTillPresentSelected = true;
                    });
                  },
                  onTap: (date) {
                    if (date != null) {
                      if (startDate != null) {
                        if (!startDate!.difference(date).isNegative) {
                          Fluttertoast.showToast(
                              msg: '"Till" date cannnot be before "From" date');
                          return;
                        }
                      }
                      setState(() {
                        isEditingMode = true;
                        isTillPresentSelected = false;
                        endDate = date as DateTime;
                      });
                    }
                  },
                  selectedDate: endDate,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget descriptionWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.white,
      child: Column(
        children: [
          TextFieldBoxWidget(
            controller: descTEC,
            hint: "Description",
            minLinesForHeight: 3,
            maxLength: 150,
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : "Please add description";
            },
          ),
        ],
      ),
    );
  }
}
