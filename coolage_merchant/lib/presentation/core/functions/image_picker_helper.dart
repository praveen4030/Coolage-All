import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

// ignore: avoid_classes_with_only_static_members
class ImagePickerHelper {
  static final _imagePicker = ImagePicker();
  static Future<Either<Unit, File>> pickImageFromGallery() async {
    final PickedFile? pickedFile = await _imagePicker.getImage(
      source: ImageSource.gallery,
      imageQuality: 40,
    );
    File image;

    if (pickedFile != null) {
      image = File(pickedFile.path);
      return right(image);
    }
    return left(unit);
  }

  static Future<Either<Unit, File>> pickImageFromCamera() async {
    final PickedFile? pickedFile = await _imagePicker.getImage(
      source: ImageSource.camera,
      imageQuality: 40,
    );
    File image;
    if (pickedFile != null) {
      image = File(pickedFile.path);
      return right(image);
    }
    return left(unit);
  }
}
