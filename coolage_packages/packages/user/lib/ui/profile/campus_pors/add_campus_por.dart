import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user/application/profile/campus_pors/campus_pors_bloc.dart';
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
import 'package:college/college.dart';

class AddCampusPorWidget extends StatefulWidget {
  final CampusPorsModel? campusPorsModel;
  const AddCampusPorWidget({
    Key? key,
    this.campusPorsModel,
  }) : super(key: key);

  @override
  _AddCampusPorWidgetState createState() => _AddCampusPorWidgetState();
}

class _AddCampusPorWidgetState extends State<AddCampusPorWidget> {
  bool isEditingMode = false;
  bool isTillPresentSelected = false;
  final formKey = GlobalKey<FormState>();
  final titleTEC = TextEditingController();
  String? organisation;
  final descTEC = TextEditingController();
  DateTime? startDate;
  DateTime? endDate;

  bool isEdit = false;
  @override
  void initState() {
    super.initState();
    if (widget.campusPorsModel != null) {
      isEdit = true;
      titleTEC.text = widget.campusPorsModel!.title ?? '';
      startDate = widget.campusPorsModel!.startFrom?.toDate();
      endDate = widget.campusPorsModel!.endAt?.toDate();
      organisation = widget.campusPorsModel!.organisation ?? '';
      descTEC.text = widget.campusPorsModel!.description ?? '';
      isTillPresentSelected = widget.campusPorsModel!.isTillPresent ?? false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CampusPorsBloc, CampusPorsState>(
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
                  title: isEdit ? "Edit Campus POR" : "Add Campus POR",
                  onSaveTap: () {
                    if (organisation?.isEmpty ?? true) {
                      Fluttertoast.showToast(
                          msg: "Please fill all the fields to continue");
                      return;
                    }
                    if (startDate == null ||
                        (endDate == null && !isTillPresentSelected)) {
                      Fluttertoast.showToast(
                          msg: "Please fill all the fields to continue");
                      return;
                    }
                    final model = CampusPorsModel(
                      title: titleTEC.text,
                      description: descTEC.text,
                      isTillPresent: isTillPresentSelected,
                      organisation: organisation,
                      startFrom: Timestamp.fromDate(startDate!),
                      endAt:
                          endDate != null ? Timestamp.fromDate(endDate!) : null,
                      isVisible:
                          isEdit ? widget.campusPorsModel!.isVisible : true,
                      id: isEdit ? widget.campusPorsModel!.id : null,
                    );
                    if (isEdit) {
                      context
                          .read<CampusPorsBloc>()
                          .add(CampusPorsEvent.addCampusPor(
                            onAdd: (CampusPorsModel campusPorsModel) {
                              final user = Getters.getCurrentUser(context);
                              user.studentProfileModel!.campusPorsModel!.update(
                                  widget.campusPorsModel!.id!, (_) => model);
                              context.read<AuthenticationBloc>().add(
                                  AuthenticationEvent.userModified(user: user));
                            },
                            model: model,
                          ));
                    } else {
                      context.read<CampusPorsBloc>().add(
                            CampusPorsEvent.addCampusPor(
                              onAdd: (CampusPorsModel campusPorsModel) {
                                final user = Getters.getCurrentUser(context);
                                user.studentProfileModel!.campusPorsModel!
                                    .putIfAbsent(campusPorsModel.id!,
                                        () => campusPorsModel);
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
                  isSavingLoading: state.isLoading,
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
            list: CollegeGetters.getCurrentUserCollegeGroups(context),
            onChanged: (value) {
              setState(() {
                organisation = value as String;
                isEditingMode = true;
              });
            },
            value: organisation,
            hint: "Group",
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
}
