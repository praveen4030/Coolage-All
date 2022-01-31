import 'dart:io';

import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:coolage_merchant/presentation/core/functions/image_picker_helper.dart';

class ImagePickerDialog extends StatelessWidget {
  final Function? onImageSelected;
  const ImagePickerDialog({
    Key? key,
    @required this.onImageSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text("Select Photo"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextButton(
                onPressed: () async {
                  final Either<Unit, File> result =
                      await ImagePickerHelper.pickImageFromGallery();
                  result.fold(
                      (_) => null, (image) => {onImageSelected!(image)});
                },
                child: const CustomText(
                  text: "Pick from Gallery",
                  fontSize: 16,
                  color: Kolors.greyBlue,
                ),
              ),
              TextButton(
                onPressed: () async {
                  final Either<Unit, File> result =
                      await ImagePickerHelper.pickImageFromCamera();
                  result.fold(
                    (_) => null,
                    (image) => {onImageSelected!(image)},
                  );
                },
                child: const CustomText(
                  text: "Capture the Scene",
                  fontSize: 16,
                  color: Kolors.greyBlue,
                ),
              )
            ],
          ),
        ));
  }
}
