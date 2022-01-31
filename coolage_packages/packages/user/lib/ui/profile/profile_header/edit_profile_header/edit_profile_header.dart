import 'dart:io';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

import 'edit_profile_pic.dart';
import 'edit_profile_social_links.dart';
import 'edit_profile_student_info.dart';

class EditProfileHeaderPage extends StatefulWidget {
  final CoolUser coolUser;
  const EditProfileHeaderPage({
    Key? key,
    required this.coolUser,
  }) : super(key: key);

  @override
  _EditProfileHeaderPageState createState() => _EditProfileHeaderPageState();
}

class _EditProfileHeaderPageState extends State<EditProfileHeaderPage> {
  bool isEditingMode = false;
  final formKey = GlobalKey<FormState>();
  final nameTEC = TextEditingController();
  final bioTEC = TextEditingController();
  File? file;
  String? imageUrl;
  String? degree;
  String? branch;
  String? year;
  String? designation;
  Map<String, String> socialMediaUrls = {};
  final Map<String, TextEditingController> tecMap = {};

  @override
  void initState() {
    super.initState();
    nameTEC.text = widget.coolUser.name ?? '';
    bioTEC.text = widget.coolUser.bio ?? '';
    branch = widget.coolUser.branch;
    degree = widget.coolUser.degree;
    year = widget.coolUser.year;
    imageUrl = widget.coolUser.imageUrl;
    socialMediaUrls = widget.coolUser.socialMediaUrls ?? {};
    designation = widget.coolUser.designation;
    socialMediaUrls.forEach((key, value) {
      final tec = TextEditingController(text: value);
      tecMap.putIfAbsent(key, () => tec);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserDetailsBloc, UserDetailsState>(
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
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: isEditingMode
                  ? CoolageEditAppBar(
                      text: "Edit Profile",
                      onSaveTap: () {
                        onSaveTap(context);
                      },
                      isSaving: state.isLoading,
                    )
                  : CoolageAppBar(
                      isCenter: true,
                      actions: const [],
                      text: "Edit Profile",
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
                  EditProfilePicWidget(
                    file: file,
                    imageUrl: imageUrl,
                    changeFileFn: (fileNew) {
                      setState(() {
                        file = fileNew as File;
                        isEditingMode = true;
                      });
                    },
                    removePhotoFn: () {
                      setState(() {
                        imageUrl = '';
                        file = null;
                        isEditingMode = true;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  EditProfileStudentInfoWidget(
                    nameTEC: nameTEC,
                    bioTEC: bioTEC,
                    branch: branch,
                    degree: degree,
                    designation: designation,
                    userType: widget.coolUser.userType!,
                    year: year,
                    onDesignationChange: (value) {
                      setState(() {
                        designation = value as String;
                        isEditingMode = true;
                      });
                    },
                    onBranchChange: (value) {
                      setState(() {
                        branch = value as String;
                        isEditingMode = true;
                      });
                    },
                    onYearChange: (val) {
                      setState(() {
                        isEditingMode = true;
                        year = (val as String).substring(0, 1);
                      });
                    },
                    onDegreeChange: (value) {
                      setState(() {
                        if (degree != value) {
                          year = null;
                        }
                        isEditingMode = true;
                        degree = value as String;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  EditProfileSocialLinksWidget(
                    tecMap: tecMap,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> onSaveTap(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      if (widget.coolUser.userType! == Constants.USER_TYPE_STUDENT) {
        if ((branch?.isEmpty ?? true) ||
            (degree?.isEmpty ?? true) ||
            (year?.isEmpty ?? true)) {
          Fluttertoast.showToast(msg: "Please fill all the necessary details!");
        }
      } else if (widget.coolUser.userType! == Constants.USER_TYPE_FACULTY) {
        if ((branch?.isEmpty ?? true) || (designation?.isEmpty ?? true)) {
          Fluttertoast.showToast(msg: "Please fill all the necessary details!");
        }
      }

      final model = Getters.getCurrentUser(context);
      model.branch = branch;
      model.degree = degree;
      model.year = year;
      model.name = nameTEC.text;
      model.bio = bioTEC.text;
      model.imageUrl = imageUrl;
      final Map<String, String> map = {};
      tecMap.forEach((key, value) {
        if (value.text.isNotEmpty) {
          map.putIfAbsent(key, () => value.text);
        }
      });
      model.socialMediaUrls = map;

      context.read<UserDetailsBloc>().add(UserDetailsEvent.updateUserDetails(
            onUpdate: (CoolUser coolUser) {
              context
                  .read<AuthenticationBloc>()
                  .add(AuthenticationEvent.userModified(user: coolUser));
            },
            model: model,
            file: file,
          ));
    }
  }
}
