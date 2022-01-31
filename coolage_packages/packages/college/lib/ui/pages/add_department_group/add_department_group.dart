import 'dart:io';

import 'package:college/application/college/college_bloc.dart';
import 'package:college/application/college_groups/college_groups_bloc.dart';
import 'package:college/college.dart';
import 'package:college/domain/contact_info_group.dart';
import 'package:college/domain/group_model.dart';
import 'package:college/ui/pages/add_department_group/widgets/add_background_image.dart';
import 'package:college/ui/pages/add_department_group/widgets/add_logo.dart';
import 'package:college/ui/pages/add_department_group/widgets/contact_info_groups.dart';
import 'package:college/ui/pages/add_department_group/widgets/department_degrees.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/user.dart';

class AddDepartmentGroupPage extends StatefulWidget {
  final GroupModel? groupModel;
  final bool isDepartment;
  const AddDepartmentGroupPage({
    Key? key,
    this.groupModel,
    required this.isDepartment,
  }) : super(key: key);

  @override
  _AddDepartmentGroupPageState createState() => _AddDepartmentGroupPageState();
}

class _AddDepartmentGroupPageState extends State<AddDepartmentGroupPage> {
  bool isEditingMode = false;
  bool isEdit = false;
  final formKey = GlobalKey<FormState>();
  final nameTEC = TextEditingController();
  final descTEC = TextEditingController();
  File? logoFile;
  String? logoImageUrl;
  File? backgroundFile;
  String? backgroundImageUrl;
  List<ContactInfoGroupModel> contactinfoGroupModelsList = [];
  List<String> departmentDegreesList = [];

  @override
  void initState() {
    super.initState();
    if (widget.groupModel != null) {
      isEdit = true;
      contactinfoGroupModelsList = widget.groupModel!
          .getUpdatedUniqueContactInfoList(
              widget.groupModel!.contactInfoMap?.values.toList() ?? []);
      nameTEC.text = widget.groupModel?.name ?? '';
      descTEC.text = widget.groupModel?.about ?? '';
      backgroundImageUrl = widget.groupModel!.image ?? '';
      logoImageUrl = widget.groupModel!.logoImage ?? '';
      departmentDegreesList:
      widget.groupModel!.departmentDegreesList ?? [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CollegeGroupsBloc, CollegeGroupsState>(
      listener: (context, state) {
        state.actionFirebaseResultOpt.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(message: failure.error)
                    .show(context);
              },
              (msg) {
                Fluttertoast.showToast(msg: msg);
                Navigator.of(context).pop();
                final collegeModel =
                    context.read<CollegeBloc>().state.collegeModel!;
                if (msg.contains("deleted")) {
                  if (widget.isDepartment) {
                    (collegeModel.departments ?? []).remove(nameTEC.text);
                  } else {
                    (collegeModel.groups ?? []).remove(nameTEC.text);
                  }

                  Navigator.of(context).pop();
                  return;
                }

                if (isEdit) {
                  if (nameTEC.text != widget.groupModel!.name) {
                    if (widget.isDepartment) {
                      (collegeModel.departments ?? [])
                          .remove(widget.groupModel!.name);
                      (collegeModel.departments ?? []).add(nameTEC.text);
                    } else {
                      (collegeModel.groups ?? [])
                          .remove(widget.groupModel!.name);
                      (collegeModel.groups ?? []).add(nameTEC.text);
                    }
                  }
                  Navigator.of(context).pop();
                } else {
                  if (widget.isDepartment) {
                    (collegeModel.departments ?? []).add(nameTEC.text);
                  } else {
                    (collegeModel.groups ?? []).add(nameTEC.text);
                  }
                }
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GroupDetailsPage(
                          groupName: nameTEC.text,
                        )));
              },
            );
          },
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: isEditingMode
                  ? CoolageEditAppBar(
                      text: isEdit ? "Edit Details" : "Add Details",
                      onSaveTap: () {
                        onSaveTap(context);
                      },
                      isSaving: state.isSavingGroup,
                    )
                  : CoolageAppBar(
                      isCenter: true,
                      backgroundColor: Kolors.greyWhite,
                      actions: const [],
                      text: isEdit ? "Edit Details" : "Add Details",
                    ),
            ),
            body: Form(
              key: formKey,
              onChanged: () {
                setState(() {
                  isEditingMode = true;
                });
              },
              child: ListView(
                children: [
                  basicDetailsWidget(),
                  const SizedBox(
                    height: 24,
                  ),
                  GroupBackgroundImageWidget(
                    file: backgroundFile,
                    imageUrl: backgroundImageUrl,
                    changeFileFn: (fileNew) {
                      setState(() {
                        backgroundFile = fileNew;
                        isEditingMode = true;
                      });
                    },
                    removePhotoFn: () {
                      setState(() {
                        backgroundImageUrl = '';
                        backgroundFile = null;
                        isEditingMode = true;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ThumbnailGroupWidget(
                    file: logoFile,
                    imageUrl: logoImageUrl,
                    changeFileFn: (fileNew) {
                      setState(() {
                        logoFile = fileNew;
                        isEditingMode = true;
                      });
                    },
                    removePhotoFn: () {
                      setState(() {
                        logoImageUrl = '';
                        logoFile = null;
                        isEditingMode = true;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ContactInfoGroupsWidget(
                    contactInfoList: contactinfoGroupModelsList,
                    onChange: () {
                      setState(() {
                        isEditingMode = true;
                      });
                    },
                  ),
                  if (isEdit && CollegeCoreFunctionality.isAdmin)
                    const SizedBox(
                      height: 24,
                    ),
                  if (isEdit && CollegeCoreFunctionality.isAdmin)
                    DeleteTile(
                      isDeleting: state.isDeletingGroup,
                      onTap: () {
                        context
                            .read<CollegeGroupsBloc>()
                            .add(CollegeGroupsEvent.deleteGroupDetails(
                              userCollege:
                                  Getters.getCurrentUserCollege(context),
                              model: widget.groupModel!,
                            ));
                      },
                      text:
                          "Delete this ${widget.isDepartment ? "department " : "Group"}",
                    ),
                  if (isEdit && CollegeCoreFunctionality.isAdmin)
                    const SizedBox(
                      height: 24,
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget basicDetailsWidget() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CardHeaderTextWidget(
            text: widget.isDepartment ? "Department Details" : "Group Details",
          ),
          const SizedBox(
            height: 32,
          ),
          TextFieldLineWidget(
            controller: nameTEC,
            hint: "Title",
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : 'Please add title';
            },
          ),
          const SizedBox(
            height: 32,
          ),
          TextFieldBoxWidget(
            controller: descTEC,
            minLinesForHeight: 6,
            hint: "About",
            maxLength: 500,
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : 'Please add about';
            },
          ),
          const SizedBox(
            height: 32,
          ),
          if (widget.isDepartment)
            DepartmentDegreesSelectPage(
              onChange: () {
                setState(() {
                  isEditingMode = true;
                });
              },
              departmentDegreesList: departmentDegreesList,
            ),
          if (widget.isDepartment)
            const SizedBox(
              height: 32,
            ),
        ],
      ),
    );
  }

  void onSaveTap(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (backgroundFile == null && (backgroundImageUrl?.isEmpty ?? true)) {
        Fluttertoast.showToast(msg: "Please select image to continue!");
        return;
      } else if (logoFile == null && (logoImageUrl?.isEmpty ?? true)) {
        Fluttertoast.showToast(msg: "Please select logo to continue!");
        return;
      } else if (contactinfoGroupModelsList.isEmpty) {
        Fluttertoast.showToast(
            msg: "Please select at least one contact information to continue!");
        return;
      } else if (widget.isDepartment && departmentDegreesList.isEmpty) {
        Fluttertoast.showToast(
            msg: "Please select department degrees to continue!");
        return;
      }
      try {
        final model = GroupModel(
          name: nameTEC.text,
          about: descTEC.text,
          departmentDegreesList: departmentDegreesList,
          logoImage: logoImageUrl,
          image: backgroundImageUrl,
          isDepartment: widget.isDepartment,
          docId: isEdit ? widget.groupModel!.docId : null,
          contactInfoMap: getContactInfoMap(),
        );
        context
            .read<CollegeGroupsBloc>()
            .add(CollegeGroupsEvent.addGroupDetails(
              isEdit: isEdit,
              userCollege: Getters.getCurrentUserCollege(context),
              model: model,
              backgroundImageFile: backgroundFile,
              logoFile: logoFile,
              earlierName:
                  widget.groupModel != null ? widget.groupModel!.name : null,
            ));
      } catch (e) {
        Fluttertoast.showToast(msg: "Something went wrong!");
      }
    }
  }

  Map<String, ContactInfoGroupModel> getContactInfoMap() {
    final Map<String, ContactInfoGroupModel> map = {};
    for (final model in contactinfoGroupModelsList) {
      map.putIfAbsent(model.id!, () => model);
    }
    return map;
  }
}
