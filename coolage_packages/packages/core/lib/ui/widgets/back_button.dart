part of core;

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: const IconImagesWid(
        iconName: "back.png",
        color: Kolors.greyBlue,
        height: 30,
        width: 16,
      ),
    );
  }
}
