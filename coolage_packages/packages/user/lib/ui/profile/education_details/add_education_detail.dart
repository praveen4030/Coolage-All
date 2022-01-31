import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user/application/profile/education_details/education_details_bloc.dart';
import 'package:user/ui/profile/widgets/add_profile_header.dart';
import 'package:user/ui/profile/widgets/date_drop_down_widget.dart';
import 'package:user/ui/profile/widgets/select_date.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class AddEducationDetailWidget extends StatefulWidget {
  final EducationDetailsModel? model;
  const AddEducationDetailWidget({
    Key? key,
    this.model,
  }) : super(key: key);

  @override
  _AddEducationDetailWidgetState createState() =>
      _AddEducationDetailWidgetState();
}

class _AddEducationDetailWidgetState extends State<AddEducationDetailWidget> {
  bool isEditingMode = false;
  final formKey = GlobalKey<FormState>();
  final degreeTEC = TextEditingController();
  final streamTEC = TextEditingController();
  final instituteTEC = TextEditingController();
  final descTEC = TextEditingController();
  DateTime? completionDate;

  bool isEdit = false;
  @override
  void initState() {
    super.initState();
    if (widget.model != null) {
      isEdit = true;
      degreeTEC.text = widget.model!.degree ?? '';
      completionDate = widget.model!.completionDate?.toDate();
      streamTEC.text = widget.model!.stream ?? '';
      instituteTEC.text = widget.model!.institute ?? '';
      descTEC.text = widget.model!.performance ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EducationDetailsBloc, EducationDetailsState>(
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
                  title: isEdit ? "Edit education" : "Add Education",
                  isEditingMode: isEditingMode,
                  onSaveTap: () {
                    if (completionDate == null) {
                      Fluttertoast.showToast(msg: "Please fill all the fields");
                      return;
                    }
                    final model = EducationDetailsModel(
                      degree: degreeTEC.text,
                      stream: streamTEC.text,
                      performance: descTEC.text,
                      completionDate: Timestamp.fromDate(completionDate!),
                      isVisible: isEdit ? widget.model!.isVisible : true,
                      id: isEdit ? widget.model!.id : null,
                      institute: instituteTEC.text,
                    );
                    if (isEdit) {
                      context
                          .read<EducationDetailsBloc>()
                          .add(EducationDetailsEvent.addEducationDetails(
                            onAdd:
                                (EducationDetailsModel educationDetailsModel) {
                              final user = Getters.getCurrentUser(context);
                              user.studentProfileModel!.educationDetailsModel!
                                  .update(widget.model!.id!, (_) => model);
                              context.read<AuthenticationBloc>().add(
                                  AuthenticationEvent.userModified(user: user));
                            },
                            model: model,
                          ));
                    } else {
                      context.read<EducationDetailsBloc>().add(
                            EducationDetailsEvent.addEducationDetails(
                              onAdd: (EducationDetailsModel
                                  educationDetailsModel) {
                                final user = Getters.getCurrentUser(context);
                                user.studentProfileModel!.educationDetailsModel!
                                    .putIfAbsent(educationDetailsModel.id!,
                                        () => educationDetailsModel);
                                context.read<AuthenticationBloc>().add(
                                    AuthenticationEvent.userModified(
                                        user: user));
                              },
                              model: model,
                            ),
                          );
                    }
                  },
                ),
                Container(
                  color: Kolors.greyWhite,
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height *
                          (isKeyboardOpen ? 0.4 : 0.8)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        headerWidget(),
                        const SizedBox(
                          height: 16,
                        ),
                        detailsWidget(),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
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
            controller: degreeTEC,
            hint: "Degree",
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : "Please add degree";
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFieldLineWidget(
            controller: streamTEC,
            hint: "Stream",
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : "Please add stream";
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFieldLineWidget(
            controller: instituteTEC,
            hint: "Institute",
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : "Please add institute";
            },
          ),
        ],
      ),
    );
  }

  Widget detailsWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.white,
      child: Column(
        children: [
          DateDropDownWidget(
            hint: "Completed At",
            onTap: (date) {
              if (date != null) {
                setState(() {
                  isEditingMode = true;
                  completionDate = date as DateTime;
                });
              }
            },
            selectedDate: completionDate,
          ),
          const SizedBox(
            height: 20,
          ),
          TextFieldLineWidget(
            controller: descTEC,
            hint: "CGPA/PERCENTAGE",
            validationFn: (val) {
              return val?.isNotEmpty ?? false
                  ? null
                  : "Please add your performance details";
            },
          ),
        ],
      ),
    );
  }
}
