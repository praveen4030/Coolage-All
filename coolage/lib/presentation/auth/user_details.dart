import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/presentation/auth/redirect_based_on_details.dart';
import 'package:coolage/presentation/auth/widgets/college_dropdown.dart';
import 'package:coolage/presentation/base/base.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({Key? key}) : super(key: key);

  @override
  _UserDetailsPageState createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  final formKey = GlobalKey<FormState>();
  final nameTEC = TextEditingController();
  final emailTEC = TextEditingController();
  OnboardedCollege? onboardedSelectedCollege;
  File? file;

  @override
  void initState() {
    super.initState();
    context.read<CoolageDetailsBloc>().add(const CoolageDetailsEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.updateProfileFailureOrSuccess.fold(() {}, (either) {
          either.fold(
            (failure) {
              FlushbarHelper.createError(message: failure.error).show(context);
            },
            (_) async {
              Fluttertoast.showToast(msg: 'Profile details saved successfully');
              await AuthNavigation.redirectUserBasedOnDetails(context);
            },
          );
        });
      },
      builder: (context, state) {
        bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;

        return Scaffold(
            // resizeToAvoidBottomInset: false,
            backgroundColor: Kolors.greyWhite,
            appBar: AppBar(
              toolbarHeight: 0,
            ),
            body: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    userProfile(),
                    Container(
                      child: Column(
                        children: [
                          const SizedBox(height: 60),
                          LabelTextFieldWidget(
                            fontSize: 14,
                            text: "Name:",
                            textFormField: TextFormField(
                              textCapitalization: TextCapitalization.words,
                              controller: nameTEC,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                return val?.isNotEmpty ?? false
                                    ? null
                                    : 'Enter your name';
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              style: const TextStyle(
                                fontSize: 20,
                                color: Kolors.greyBlack,
                                fontWeight: FontWeight.w600,
                                fontFamily: Fonts.CONTENT_FONT,
                              ),
                            ),
                          ),
                          const SizedBox(height: 44),
                          LabelTextFieldWidget(
                            fontSize: 14,
                            text: "College:",
                            textFormField: CollegeDropDownWidget(
                                onChanged: (onboardedCollege) {
                                  setState(() {
                                    onboardedSelectedCollege =
                                        onboardedCollege as OnboardedCollege;
                                  });
                                },
                                onboardedCollege: onboardedSelectedCollege),
                          ),
                          const SizedBox(height: 44),
                          LabelTextFieldWidget(
                            fontSize: 14,
                            text: "College email id:",
                            textFormField: TextFormField(
                              controller: emailTEC,
                              validator: (val) {
                                if (val?.isEmpty ?? true) return null;
                                return RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(val!.trim())
                                    ? null
                                    : "Please enter correct college email id";
                              },
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: Fonts.CONTENT_FONT,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 120),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: Visibility(
              visible: !isKeyboardOpen,
              child: Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: BlueButtonWidget(
                  isLoading: state.isUpdatingProfileLoading!,
                  width: 150,
                  onTap: () {
                    if (context
                        .read<CoolageDetailsBloc>()
                        .state
                        .coolageDetailsModel!
                        .onboardedCollegesList!
                        .isEmpty) {
                      context
                          .read<CoolageDetailsBloc>()
                          .add(const CoolageDetailsEvent.started());
                    }
                    if (formKey.currentState!.validate() &&
                        onboardedSelectedCollege != null) {
                      CoolUser user = CoolUser(
                          uid: Getters.getCurrentUserUid(),
                          name: nameTEC.text,
                          phoneNo:
                              FirebaseAuth.instance.currentUser!.phoneNumber,
                          imageUrl: '',
                          college: onboardedSelectedCollege!.college,
                          signUpAt: Timestamp.now(),
                          lastLoginAt: Timestamp.now(),
                          emailId:
                              emailTEC.text.isNotEmpty ? emailTEC.text : '');
                      context
                          .read<AuthenticationBloc>()
                          .add(AuthenticationEvent.updateUserDetails(
                            coolUser: user,
                            file: file,
                          ));
                    } else if (onboardedSelectedCollege == null) {
                      Fluttertoast.showToast(
                          msg: "Please select your college!");
                    }
                  },
                  text: "DONE",
                ),
              ),
            ));
      },
    );
  }

  // Widget textFieldWidget(
  //     {@required String? text, @required Widget? textFormField}) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       TextFieldTopText(
  //         text: text,
  //       ),
  //       textFormField!,
  //       // Container(
  //       //   height: 85,
  //       //   width: MediaQuery.of(context).size.width,
  //       //   margin: const EdgeInsets.only(top: 10),
  //       //   padding: const EdgeInsets.symmetric(horizontal: 24),
  //       //   color: Kolors.white,
  //       //   alignment: Alignment.centerLeft,
  //       //   child: textFormField,
  //       // ),
  //       // Padding(
  //       //   padding: const EdgeInsets.only(left: 24),
  //       //   child: CustomText(
  //       //     text: text,
  //       //     color: Kolors.greyBlue,
  //       //     fontSize: 18,
  //       //   ),
  //       // ),
  //     ],
  //   );
  // }

  Widget userProfile() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          child: Image.asset(
            'assets/images/onboardingcircle.png',
            height: 170,
          ),
        ),
        GestureDetector(
          onTap: () async {
            await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ImagePickerDialog(
                    onImageSelected: (selected) async {
                      setState(() {
                        file = selected as File;
                      });
                      Fluttertoast.showToast(msg: 'Image Selected');
                      Navigator.of(context).pop();
                    },
                  );
                });
          },
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: file != null
                  ? Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: kIsWeb
                              ? Image.network(
                                  file!.path,
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.cover,
                                )
                              : Image.file(
                                  file!,
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                        ),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            'assets/icons/edit.png',
                            height: 24,
                            width: 24,
                          ),
                        )
                      ],
                    )
                  : Image.asset(
                      'assets/images/avatar.png',
                      height: 120,
                      fit: BoxFit.fill,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
