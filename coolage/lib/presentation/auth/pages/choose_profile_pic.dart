import 'dart:io';

import 'package:coolage/application/profile/onboarding/onboarding_bloc.dart';
import 'package:coolage/presentation/auth/pages/select_user_type.dart';
import 'package:coolage/presentation/auth/widgets/get_from_linkedin.dart';
import 'package:coolage/presentation/core/widgets/onboarding_progress_bar.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseProfilePicPage extends StatefulWidget {
  const ChooseProfilePicPage({Key? key}) : super(key: key);

  @override
  _ChooseProfilePicPageState createState() => _ChooseProfilePicPageState();
}

class _ChooseProfilePicPageState extends State<ChooseProfilePicPage> {
  String? college;
  File? file;
  bool isEnabled = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 1,
            ),
            const OnboardingProgressBar(
              stepNo: 5,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 24),
                            child: Row(
                              children: [
                                const BackButtonWidget(),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SelectUserTypePage(),
                                      ),
                                    );
                                  },
                                  child: CustomText(
                                    text: "SKIP",
                                    color: Kolors.greyBlue.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const CustomText(
                            text: "Add profile photo",
                            fontSize: 30,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const CustomText(
                            text:
                                "That has only your face and it’s clearly visible. ",
                            fontSize: 14,
                            color: Kolors.greyBlue,
                            fontFamily: Fonts.CONTENT_FONT,
                            fontWeight: FontWeight.w400,
                          ),
                          // const SizedBox(
                          //   height: 40,
                          // ),
                          // const GetFromLinkedInWidget(),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              if (file != null)
                                CircleAvatar(
                                  radius: 93,
                                  backgroundImage: FileImage(file!),
                                  backgroundColor: Kolors.skyBlueColor,
                                )
                              else
                                Container(
                                  height: 186,
                                  width: 186,
                                  decoration: const BoxDecoration(
                                    color: Kolors.skyBlueColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/avatar_transparent.png',
                                    height: 108,
                                    width: 108,
                                  ),
                                ),
                              const Spacer(),
                              Column(
                                children: [
                                  photoPickerWidget(
                                    icon: "take_photo.png",
                                    onTap: () async {
                                      final dartz.Either<dartz.Unit, File>
                                          result = await ImagePickerHelper
                                              .pickImageFromCamera();
                                      result.fold(
                                        (_) => null,
                                        (image) {
                                          setState(() {
                                            isEnabled = true;
                                            file = image;
                                          });
                                        },
                                      );
                                    },
                                    text: "Take Photo",
                                  ),
                                  const SizedBox(
                                    height: 28,
                                  ),
                                  photoPickerWidget(
                                    icon: "open_gallery.png",
                                    onTap: () async {
                                      final dartz.Either<dartz.Unit, File>
                                          result = await ImagePickerHelper
                                              .pickImageFromGallery();
                                      result.fold((_) => null, (image) {
                                        setState(() {
                                          isEnabled = true;
                                          file = image;
                                        });
                                      });
                                    },
                                    text: "Open Gallery",
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomSheet: ContinueButton(
          isEnabled: isEnabled,
          onTap: () {
            if (file != null) {
              context
                  .read<OnboardingBloc>()
                  .add(OnboardingEvent.updateProfileFile(file: file!));
            }
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SelectUserTypePage(),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget photoPickerWidget({
    required String icon,
    required String text,
    required Function onTap,
  }) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 80,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Kolors.greyBlue.withOpacity(0.5),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconImagesWid(
              iconName: icon,
              height: 40,
              width: 40,
              color: Kolors.primaryColor1,
            ),
            const SizedBox(
              height: 4,
            ),
            CustomText(
              text: text,
              color: Kolors.greyBlue,
              fontSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}
