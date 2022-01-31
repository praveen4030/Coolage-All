import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user/application/profile/projects/projects_bloc.dart';
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

class AddProjectWidget extends StatefulWidget {
  final ProjectsModel? model;
  const AddProjectWidget({
    Key? key,
    this.model,
  }) : super(key: key);

  @override
  _AddProjectWidgetState createState() => _AddProjectWidgetState();
}

class _AddProjectWidgetState extends State<AddProjectWidget> {
  bool isEditingMode = false;
  final formKey = GlobalKey<FormState>();
  final titleTEC = TextEditingController();
  final fieldTEC = TextEditingController();
  final organisationTEC = TextEditingController();
  final descTEC = TextEditingController();
  DateTime? completionDate;

  bool isEdit = false;
  @override
  void initState() {
    super.initState();
    if (widget.model != null) {
      isEdit = true;
      titleTEC.text = widget.model!.title ?? '';
      completionDate = widget.model!.completionDate?.toDate();
      fieldTEC.text = widget.model!.field ?? '';

      organisationTEC.text = widget.model!.organisation ?? '';
      descTEC.text = widget.model!.description ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectsBloc, ProjectsState>(
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
                  title: isEdit ? "Edit Project" : "Add project",
                  isEditingMode: isEditingMode,
                  onSaveTap: () {
                    if (completionDate == null) {
                      Fluttertoast.showToast(msg: "Please fill all the fields");
                      return;
                    }
                    final model = ProjectsModel(
                      title: titleTEC.text,
                      description: descTEC.text,
                      organisation: organisationTEC.text,
                      field: fieldTEC.text,
                      completionDate: Timestamp.fromDate(completionDate!),
                      isVisible: isEdit ? widget.model!.isVisible : true,
                      id: isEdit ? widget.model!.id : null,
                    );
                    if (isEdit) {
                      context.read<ProjectsBloc>().add(ProjectsEvent.addProject(
                            onAdd: (ProjectsModel projectsModel) {
                              final user = Getters.getCurrentUser(context);
                              user.studentProfileModel!.projectsModel!
                                  .update(widget.model!.id!, (_) => model);
                              context.read<AuthenticationBloc>().add(
                                  AuthenticationEvent.userModified(user: user));
                            },
                            model: model,
                          ));
                    } else {
                      context.read<ProjectsBloc>().add(
                            ProjectsEvent.addProject(
                              onAdd: (ProjectsModel projectsModel) {
                                final user = Getters.getCurrentUser(context);
                                user.studentProfileModel!.projectsModel!
                                    .putIfAbsent(
                                        projectsModel.id!, () => projectsModel);
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
                    child: Container(
                      child: Column(
                        children: [
                          headerWidget(),
                          const SizedBox(
                            height: 16,
                          ),
                          descriptionWidget(),
                          const SizedBox(
                            height: 16,
                          ),
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
            height: 20,
          ),
          TextFieldLineWidget(
            controller: fieldTEC,
            hint: "Field",
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : "Please add field name";
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
          const SizedBox(
            height: 20,
          ),
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
            labelStyle: const TextStyle(
              color: Kolors.greyBlue,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: Fonts.HEADING_FONT,
            ),
          ),
        ],
      ),
    );
  }
}
