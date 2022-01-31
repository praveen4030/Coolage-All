part of core;

class ImagePickerDialog extends StatelessWidget {
  final Function? onImageSelected;
  final int? quality;
  const ImagePickerDialog({
    Key? key,
    @required this.onImageSelected,
    this.quality,
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
                  final dartz.Either<dartz.Unit, File> result =
                      await ImagePickerHelper.pickImageFromGallery(
                    quality: quality,
                  );
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
                  final dartz.Either<dartz.Unit, File> result =
                      await ImagePickerHelper.pickImageFromCamera(
                    quality: quality,
                  );
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
