import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage_merchant/application/auth/authentication_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/user/cool_user.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/app_bar.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_layout.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/edit_circular.dart';
import 'package:coolage_merchant/presentation/core/widgets/gradient_background.dart';
import 'package:coolage_merchant/presentation/core/widgets/image_picker_dialog.dart';
import 'package:coolage_merchant/presentation/core/widgets/purple_gradient_button.dart';
import 'package:coolage_merchant/presentation/core/widgets/text_field_top_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/user_profile_circular.dart';
import 'package:coolage_merchant/presentation/profile/sales/sales_overall_widget.dart';
import 'package:coolage_merchant/presentation/profile/widgets/voice_alert.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? file;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        // TODO: implement listener
        state.updateProfileFailureOrSuccess!.fold(() {}, (either) {
          either.fold(
            (failure) {
              FlushbarHelper.createError(message: failure.error).show(context);
            },
            (_) {
              Fluttertoast.showToast(msg: 'Profile updated successfully');
            },
          );
        });
      },
      builder: (context, state) {
        return CustomLayout(
          child: SafeArea(
            child: Scaffold(
              appBar: const PreferredSize(
                preferredSize: Size.fromHeight(70),
                child: CoolageAppBar(actions: [], text: 'Profile'),
              ),
              body: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                child: ListView(
                  children: [
                    const SalesOverallWidget(),
                    if (state.canteenBasicDetailsModel!.image?.isNotEmpty ??
                        false)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: state.canteenBasicDetailsModel!.image!,
                          height: 146,
                          fit: BoxFit.cover,
                        ),
                      ),
                    const SizedBox(
                      height: 16,
                    ),
                    textHolderWid(
                      context,
                      state.canteenBasicDetailsModel!.name ?? 'Canteen Name',
                      "Name",
                    ),
                    textHolderWid(
                        context,
                        state.canteenBasicDetailsModel!.contactNo ?? 'Phone No',
                        "Phone Number"),
                    textHolderWid(
                        context,
                        state.canteenBasicDetailsModel!.college ?? 'College',
                        "College Name"),
                    textHolderWid(
                      context,
                      state.canteenBasicDetailsModel!.location ?? 'Location',
                      "Location",
                    ),
                    const VoiceAlertWidget(),
                    const TextFieldTopText(
                      text: "Working Hours",
                    ),
                    timingsWidget(state.canteenBasicDetailsModel!),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: PurpleGradientButton(
                        text: "Logout",
                        onTap: () {
                          context
                              .read<AuthenticationBloc>()
                              .add(const AuthenticationEvent.signedOut());
                          AutoRouter.of(context).popUntilRoot();
                          AutoRouter.of(context)
                              .replace(const LoginPageRoute());
                        },
                        width: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    appVersion(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> updateImage(
      CanteenBasicDetailsModel canteenBasicDetailsModel) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return ImagePickerDialog(
            onImageSelected: (selected) async {
              if (selected != null) {
                context
                    .read<AuthenticationBloc>()
                    .add(AuthenticationEvent.updateCanteenDetails(
                      canteenBasicDetailsModel: canteenBasicDetailsModel,
                      file: selected as File,
                    ));
                Fluttertoast.showToast(msg: 'Updating profile image');
              }
              AutoRouter.of(context).pop();
            },
          );
        });
  }

  Widget appVersion() {
    return const Center(
      child: Text(
        "App version (0.1.2)",
        style: TextStyle(
          fontFamily: Fonts.CONTENT_FONT,
          color: Kolors.greyBlue,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget textHolderWid(
    BuildContext context,
    String text,
    String heading, {
    bool? isGoogleIcon,
    Function? onGoogleTap,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldTopText(
            text: heading,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Kolors.greyBlue.withOpacity(0.25),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: Kolors.greyBlack,
                        fontFamily: Fonts.HEADING_FONT,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  if (isGoogleIcon != null)
                    GestureDetector(
                      onTap: () {
                        onGoogleTap!();
                      },
                      child: Image.asset(
                        'assets/icons/google.png',
                        height: 18,
                        width: 18,
                      ),
                    )
                ],
              )),
        ],
      ),
    );
  }

  Widget timingsWidget(CanteenBasicDetailsModel model) {
    final openTimings = model.openAtTimeOfDay;
    final closeTimings = model.closeAtTimeOfDay;
    String start = "";
    String closing = "";
    if (openTimings != null) {
      final DateTime startDate =
          DateTime(2021, 01, 01, openTimings.hour, openTimings.minute);
      start = DateFormat("h:mm a").format(startDate);
    }
    if (closeTimings != null) {
      final DateTime closeDate =
          DateTime(2021, 01, 01, closeTimings.hour, closeTimings.minute);
      closing = DateFormat("h:mm a").format(closeDate);
    }

    return Row(
      children: [
        GestureDetector(
          onTap: () async {
            // final time = await selectTime(context);
            // if (time != null) {
            //   setState(() {
            //     openTimings = time;
            //   });
            // }
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
            // final time = await selectTime(context);
            // if (time != null) {
            //   setState(() {
            //     closeTimings = time;
            //   });
            // }
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
}
