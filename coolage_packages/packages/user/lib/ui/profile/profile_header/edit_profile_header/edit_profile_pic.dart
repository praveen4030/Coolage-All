import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EditProfilePicWidget extends StatelessWidget {
  final File? file;
  final String? imageUrl;
  final Function? changeFileFn;
  final Function? removePhotoFn;
  const EditProfilePicWidget({
    Key? key,
    required this.changeFileFn,
    required this.file,
    required this.imageUrl,
    required this.removePhotoFn,
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
            text: "Profile Pic",
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              thumbnailWidget(),
              const SizedBox(
                width: 30,
              ),
              const Spacer(),
              SizedBox(
                width: 175,
                child: Column(
                  children: [
                    PrimaryButton(
                      onTap: () async {
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
                      text: "Choose Photo",
                      width: 172,
                    ),
                    if (file != null || (imageUrl?.isNotEmpty ?? false))
                      const SizedBox(
                        height: 12,
                      ),
                    if (file != null || (imageUrl?.isNotEmpty ?? false))
                      PrimaryBorderButton(
                        onTap: () {
                          removePhotoFn!();
                        },
                        text: "Remove Photo",
                        width: 172,
                      )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget thumbnailWidget() {
    return file != null
        ? Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Kolors.skyBlueColor,
              image: DecorationImage(
                image: kIsWeb
                    ? Image.network(
                        file!.path,
                        height: 84,
                        width: 84,
                        fit: BoxFit.fill,
                      ).image
                    : Image.file(
                        file!,
                        height: 84,
                        width: 84,
                        fit: BoxFit.fill,
                      ).image,
              ),
            ),
            height: 84,
            width: 84,
          )
        : imageUrl?.isNotEmpty ?? false
            ? Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Kolors.skyBlueColor,
                  image: DecorationImage(
                    image: NetworkImage(imageUrl!),
                  ),
                ),
                height: 84,
                width: 84,
              )
            : Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Kolors.skyBlueColor,
                ),
                height: 84,
                width: 84,
                child: Center(
                  child: Image.asset(
                    'assets/images/avatar_transparent.png',
                    height: 54,
                    width: 54,
                  ),
                ),
              );
  }
}
