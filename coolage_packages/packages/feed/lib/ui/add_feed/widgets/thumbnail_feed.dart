import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThumbnailFeedWidget extends StatelessWidget {
  final String? category;
  final File? file;
  final String? imageUrl;
  final String? categoryIcon;
  final Function? changeFileFn;
  final Function? removePhotoFn;
  final bool isNonEditablePublishingMode;

  const ThumbnailFeedWidget({
    Key? key,
    @required this.changeFileFn,
    @required this.file,
    @required this.imageUrl,
    @required this.removePhotoFn,
    @required this.category,
    @required this.categoryIcon,
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
            text: "Thumbnail",
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PrimaryButton(
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
                      text: "Choose Photo",
                      width: 172,
                    ),
                    if (file != null ||
                        (imageUrl?.isNotEmpty ?? false) ||
                        (categoryIcon?.isNotEmpty ?? false))
                      const SizedBox(
                        height: 12,
                      ),
                    if (file != null ||
                        (imageUrl?.isNotEmpty ?? false) ||
                        (categoryIcon?.isNotEmpty ?? false))
                      PrimaryBorderButton(
                        onTap: () {
                          if (isNonEditablePublishingMode) return;
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
            : categoryIcon?.isNotEmpty ?? false
                ? Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Kolors.white,
                    ),
                    height: 84,
                    width: 84,
                    child: Image.asset(
                      'assets/icons/$categoryIcon.png',
                      height: 72,
                      width: 72,
                    ),
                  )
                : Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Kolors.skyBlueColor,
                    ),
                    height: 84,
                    width: 84,
                    child: const IconImagesWid(
                      iconName: 'empty_logo.png',
                      height: 72,
                      width: 72,
                      color: Colors.white,
                    ),
                  );
  }
}
