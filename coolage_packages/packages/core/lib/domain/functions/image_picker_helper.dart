part of core;

// ignore: avoid_classes_with_only_static_members
class ImagePickerHelper {
  static final _imagePicker = ImagePicker();
  static PickedFile? pickedFile;
  static Future<dartz.Either<dartz.Unit, File>> pickImageFromGallery(
      {int? quality}) async {
    pickedFile = await _imagePicker.getImage(
      source: ImageSource.gallery,
      imageQuality: quality ?? 40,
    );

    File image;

    if (pickedFile != null) {
      image = File(pickedFile!.path);
      return dartz.right(image);
    }
    return dartz.left(dartz.unit);
  }

  static Future<dartz.Either<dartz.Unit, File>> pickImageFromCamera(
      {int? quality}) async {
    pickedFile = await _imagePicker.getImage(
      source: ImageSource.camera,
      imageQuality: quality ?? 40,
    );
    File image;
    if (pickedFile != null) {
      image = File(pickedFile!.path);
      return dartz.right(image);
    }
    return dartz.left(dartz.unit);
  }

  static Future<UploadTask?> getUploadTaskToUploadImage(
      File file, Reference ref) async {
    UploadTask? uploadTask;
    if (kIsWeb) {
      if (ImagePickerHelper.pickedFile != null) {
        final bytes = await ImagePickerHelper.pickedFile!.readAsBytes();
        debugPrint(bytes.toString());
        uploadTask = ref.putData(bytes);
      }
    } else {
      uploadTask = ref.putFile(file);
    }
    return uploadTask;
  }
}
