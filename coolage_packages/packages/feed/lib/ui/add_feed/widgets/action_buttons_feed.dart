import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ActionButtonsFeedWidget extends StatelessWidget {
  final TextEditingController? phoneTEC;
  final TextEditingController? redirectLinkTEC;
  final File? file;
  final String? imageUrl;
  final Function? changeFileFn;
  final Function? removePhotoFn;
  final bool isNonEditablePublishingMode;

  const ActionButtonsFeedWidget({
    Key? key,
    @required this.phoneTEC,
    @required this.redirectLinkTEC,
    @required this.changeFileFn,
    @required this.file,
    @required this.imageUrl,
    @required this.removePhotoFn,
    this.isNonEditablePublishingMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const CardHeaderTextWidget(
            text: "Action Buttons",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text:
                "Add details to the following action buttons to activate them. ",
            fontFamily: Fonts.CONTENT_FONT,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Kolors.greyBlue,
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleIcon(
                icon: 'call',
                height: 25,
                color: Colors.white,
                width: 25,
                onTap: () {},
                backgroundColor: phoneTEC!.text.isNotEmpty
                    ? Kolors.secondaryColor1
                    : Kolors.greyBlue,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFieldLineWidget(
                  isEnabled: !isNonEditablePublishingMode,
                  controller: phoneTEC,
                  hint: "Phone No.",
                  validationFn: (val) {
                    return null;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleIcon(
                icon: 'visit',
                height: 25,
                color: Colors.white,
                width: 25,
                onTap: () {},
                backgroundColor: redirectLinkTEC!.text.isNotEmpty
                    ? Kolors.secondaryColor1
                    : Kolors.greyBlue,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFieldLineWidget(
                  isEnabled: !isNonEditablePublishingMode,
                  controller: redirectLinkTEC,
                  hint: "Redirect Link",
                  validationFn: (val) {
                    return null;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleIcon(
                icon: 'empty_image_icon',
                height: 25,
                color: Colors.white,
                width: 25,
                onTap: () {},
                backgroundColor: phoneTEC!.text.isNotEmpty
                    ? Kolors.secondaryColor1
                    : Kolors.greyBlue,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: BorderButton(
                  height: 40,
                  onTap: () async {
                    if (isNonEditablePublishingMode) return;
                    await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return ImagePickerDialog(
                            onImageSelected: (selected) async {
                              if (selected != null) {
                                changeFileFn!(selected);
                              }
                              Navigator.of(context).pop();
                            },
                          );
                        });
                  },
                  text: file != null || (imageUrl?.isNotEmpty ?? false)
                      ? "Edit Photo"
                      : "Choose Photo",
                  color: Kolors.primaryColor1,
                  fontColor: Kolors.primaryColor1,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontFamily: Fonts.HEADING_FONT,
                  borderRadius: 8,
                ),
              ),
              if (file != null || (imageUrl?.isNotEmpty ?? false))
                Row(
                  children: [
                    const SizedBox(
                      width: 27,
                    ),
                    SquareIconWidget(
                      onTap: () {
                        if (isNonEditablePublishingMode) return;
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PhotoViewPage(
                                  file: file,
                                  imageUrl: imageUrl,
                                )));
                      },
                      icon: 'eye',
                      backgroundColor: Kolors.primaryColor1,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SquareBorderIconWidget(
                      onTap: () {
                        if (isNonEditablePublishingMode) return;
                        removePhotoFn!();
                        Fluttertoast.showToast(
                            msg: "Removed photo successfully!");
                      },
                      icon: 'delete',
                      borderColor: Kolors.redPrimaryColor,
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
