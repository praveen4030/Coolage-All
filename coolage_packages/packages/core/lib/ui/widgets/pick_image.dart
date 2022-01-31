part of core;

class PickImageDialog extends StatelessWidget {
  final Function? fn;
  const PickImageDialog({
    Key? key,
    @required this.fn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Wrap(
        children: <Widget>[
          ListTile(
            leading: const IconImagesWid(iconName: 'gallery.png'),
            title: Text(
              'Image from Gallery',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            onTap: () async {
              final File? chosenFile = await pickGalleryImage();
              if (chosenFile != null) {
                fn!(chosenFile);
              }
              Navigator.of(context).pop();
            },
          ),
          ListTile(
              leading: const IconImagesWid(iconName: 'camera.png'),
              title: Text(
                'Image from Camera',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onTap: () async {
                File? chosenFile = await pickCameraImage();
                if (chosenFile != null) {
                  fn!(chosenFile);
                }
                Navigator.of(context).pop();
              }),
          ListTile(
              leading: const Icon(
                Icons.cancel_rounded,
              ),
              title: Text(
                'Cancel',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onTap: () {
                Navigator.of(context).pop();
              }),
        ],
      ),
    );
  }

  Future<File> cropImage(File imageFile) async {
    final File croppedFile = (await ImageCropper.cropImage(
        sourcePath: imageFile.path,
        aspectRatioPresets: Platform.isAndroid
            ? [
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio16x9
              ]
            : [
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio5x3,
                CropAspectRatioPreset.ratio5x4,
                CropAspectRatioPreset.ratio7x5,
                CropAspectRatioPreset.ratio16x9
              ],
        androidUiSettings: const AndroidUiSettings(
            toolbarTitle: 'Crop Image', lockAspectRatio: false),
        iosUiSettings: const IOSUiSettings(
          title: 'Cropper',
        )))!;
    return croppedFile;
  }

  Future<File?> pickGalleryImage() async {
    final PickedFile? pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final File? file = File(pickedFile.path);
      final File cropFile = await cropImage(file!);
      return cropFile;
    } else {
      return null;
    }
  }

  Future<File?> pickCameraImage() async {
    final PickedFile? pickedFile =
        await ImagePicker().getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      final File? file = File(pickedFile.path);
      final File cropFile = await cropImage(file!);
      return cropFile;
    } else {
      return null;
    }
  }
}
