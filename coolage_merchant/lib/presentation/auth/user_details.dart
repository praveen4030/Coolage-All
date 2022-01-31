import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/application/auth/authentication_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/auth/next_button.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/image_picker_dialog.dart';
import 'package:coolage_merchant/presentation/core/widgets/user_profile_circular.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({Key? key}) : super(key: key);

  @override
  _UserDetailsPageState createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  final formKey = GlobalKey<FormState>();
  final canteenNameTEC = TextEditingController();
  final contactTEC = TextEditingController();
  final locationTEC = TextEditingController();
  final adminNameTEC = TextEditingController();

  TimeOfDay? startingTime;
  TimeOfDay? closingTime;
  File? file;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
      state.updateProfileFailureOrSuccess!.fold(() {}, (either) {
        either.fold(
          (failure) {
            FlushbarHelper.createError(message: failure.error).show(context);
          },
          (_) {
            Fluttertoast.showToast(msg: 'Profile details saved successfully');
            context
                .read<AuthenticationBloc>()
                .add(const AuthenticationEvent.authCheckRequested());
            AutoRouter.of(context).popUntilRoot();
            AutoRouter.of(context).replace(const BasePageRoute());
          },
        );
      });
    }, builder: (context, state) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Form(
          key: formKey,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Kolors.greyWhite,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        selectImage();
                      },
                      child: file != null
                          ? kIsWeb
                              ? Image.network(
                                  file!.path,
                                  fit: BoxFit.cover,
                                  height: 180,
                                  width: MediaQuery.of(context).size.width,
                                )
                              : Image.file(
                                  file!,
                                  fit: BoxFit.cover,
                                  height: 180,
                                  width: MediaQuery.of(context).size.width,
                                )
                          : Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 22, vertical: 20),
                              alignment: Alignment.centerLeft,
                              child: Image.asset(
                                'assets/images/add_photo.png',
                                height: 110,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              Container(
                constraints: const BoxConstraints(
                  maxHeight: 630,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(),
                  ],
                ),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            text: 'Name : ',
                            color: Kolors.greyBlue,
                            fontSize: 18,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: Kolors.greyWhite,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            alignment: Alignment.centerLeft,
                            child: TextFormField(
                              controller: adminNameTEC,
                              validator: (val) {
                                return val?.isNotEmpty ?? false
                                    ? null
                                    : 'Please enter your name';
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const CustomText(
                            text: "Canteen's Name : ",
                            color: Kolors.greyBlue,
                            fontSize: 18,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: Kolors.greyWhite,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: TextFormField(
                              controller: canteenNameTEC,
                              validator: (val) {
                                return val?.isNotEmpty ?? false
                                    ? null
                                    : 'Please enter the canteen name';
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const CustomText(
                            text: 'College : ',
                            color: Kolors.greyBlue,
                            fontSize: 18,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: Kolors.greyWhite,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            alignment: Alignment.centerLeft,
                            child: const CustomText(
                              text: "NIT Jalandhar",
                              fontSize: 18,
                              fontFamily: Fonts.HEADING_FONT,
                              color: Kolors.fontColor,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const CustomText(
                            text: 'Working Hours : ',
                            color: Kolors.greyBlue,
                            fontSize: 18,
                          ),
                          const SizedBox(height: 10),
                          timingsWidget(),
                          const SizedBox(height: 20),
                          const CustomText(
                            text: 'Canteen Contact no : ',
                            color: Kolors.greyBlue,
                            fontSize: 18,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: Kolors.greyWhite,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            alignment: Alignment.centerLeft,
                            child: TextFormField(
                              controller: contactTEC,
                              validator: (val) {
                                return val?.isNotEmpty ?? false
                                    ? null
                                    : 'Please enter the canteen contact number';
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const CustomText(
                            text: 'Location : ',
                            color: Kolors.greyBlue,
                            fontSize: 18,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: Kolors.greyWhite,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            alignment: Alignment.centerLeft,
                            child: TextFormField(
                              controller: locationTEC,
                              validator: (val) {
                                return val?.isNotEmpty ?? false
                                    ? null
                                    : 'Please enter the short location';
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        NextButton(
                          isLoading: state.isUpdatingProfileLoading,
                          onTap: () {
                            if (formKey.currentState!.validate() &&
                                startingTime != null &&
                                closingTime != null &&
                                file != null) {
                              CanteenBasicDetailsModel model =
                                  CanteenBasicDetailsModel(
                                name: canteenNameTEC.text,
                                location: locationTEC.text,
                                openAtTimeOfDay: startingTime,
                                closeAtTimeOfDay: closingTime,
                                isOpen: true,
                                isDelivery: false,
                                image: '',
                                contactNo: contactTEC.text,
                                canteenAdminContactNo: FirebaseAuth
                                    .instance.currentUser!.phoneNumber,
                                categoriesList: [],
                                college: 'NIT Jalandhar',
                                canteenAdminName: adminNameTEC.text,
                                canteenAdminUid: Getters.getCurrentUserUid(),
                                canteenOpeningTimestamp: Timestamp.now(),
                              );
                              context.read<AuthenticationBloc>().add(
                                    AuthenticationEvent.updateCanteenDetails(
                                        canteenBasicDetailsModel: model,
                                        file: file),
                                  );
                            } else if (startingTime == null ||
                                closingTime == null) {
                              Fluttertoast.showToast(
                                  msg: 'Please add canteen timinngs');
                            } else if (file == null) {
                              Fluttertoast.showToast(
                                  msg: 'Please select the canteen image!');
                            }
                          },
                          text: 'SAVE',
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget timingsWidget() {
    String start = "";
    String closing = "";
    if (startingTime != null) {
      final DateTime startDate =
          DateTime(2021, 01, 01, startingTime!.hour, startingTime!.minute);
      start = DateFormat("h:mm a").format(startDate);
    }
    if (closingTime != null) {
      final DateTime closeDate =
          DateTime(2021, 01, 01, closingTime!.hour, closingTime!.minute);
      closing = DateFormat("h:mm a").format(closeDate);
    }

    return Row(
      children: [
        GestureDetector(
          onTap: () async {
            final time = await selectTime(context);
            if (time != null) {
              setState(() {
                startingTime = time;
              });
            }
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Kolors.greyWhite,
              borderRadius: BorderRadius.circular(50),
            ),
            child: CustomText(
              text: start.isEmpty ? 'Start' : start,
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Kolors.fontColor,
            ),
          ),
        ),
        const SizedBox(width: 20),
        const CustomText(
          text: "-",
          color: Kolors.greyBlue,
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () async {
            final time = await selectTime(context);
            if (time != null) {
              setState(() {
                closingTime = time;
              });
            }
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Kolors.greyWhite,
              borderRadius: BorderRadius.circular(50),
            ),
            child: CustomText(
              text: closing.isEmpty ? 'Closing' : closing,
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Kolors.fontColor,
            ),
          ),
        ),
      ],
    );
  }

  Future<TimeOfDay?> selectTime(BuildContext context) async {
    final TimeOfDay? picked_s = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 8, minute: 0),
    );
    return picked_s;
  }

  Future<void> selectImage() async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return ImagePickerDialog(
            onImageSelected: (selected) async {
              setState(() {
                file = selected as File;
              });
              Fluttertoast.showToast(msg: 'Image Selected');
              AutoRouter.of(context).pop();
            },
          );
        });
  }
}
