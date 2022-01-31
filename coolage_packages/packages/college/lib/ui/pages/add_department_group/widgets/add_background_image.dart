import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GroupBackgroundImageWidget extends StatelessWidget {
  final File? file;
  final String? imageUrl;
  final Function? changeFileFn;
  final Function? removePhotoFn;

  const GroupBackgroundImageWidget({
    Key? key,
    @required this.changeFileFn,
    @required this.file,
    @required this.imageUrl,
    @required this.removePhotoFn,
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
            height: 20,
          ),
          thumbnailWidget(context),
          const SizedBox(
            height: 30,
          ),
          PrimaryButton(
            width: 172,
            onTap: () async {
              await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ImagePickerDialog(
                      quality: 40,
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
          ),
          if (file != null || (imageUrl?.isNotEmpty ?? false))
            const SizedBox(
              height: 12,
            ),
          if (file != null || (imageUrl?.isNotEmpty ?? false))
            PrimaryBorderButton(
              width: 172,
              onTap: () {
                removePhotoFn!();
              },
              text: "Remove Photo",
            )
        ],
      ),
    );
  }

  Widget thumbnailWidget(BuildContext context) {
    return file != null
        ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Kolors.skyBlueColor,
              image: DecorationImage(
                image: kIsWeb
                    ? Image.network(
                        file!.path,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ).image
                    : Image.file(
                        file!,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ).image,
              ),
            ),
            height: 200,
            width: MediaQuery.of(context).size.width,
          )
        : imageUrl?.isNotEmpty ?? false
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Kolors.skyBlueColor,
                  image: DecorationImage(
                    image: NetworkImage(imageUrl!),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
              )
            : Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Kolors.skyBlueColor,
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/empty_image.png',
                ),
              );
  }
}
