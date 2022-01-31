part of core;

class CircleAddButton extends StatelessWidget {
  final Function? onTap;
  const CircleAddButton({
    Key? key,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Kolors.greyBlue,
        ),
        child: const Center(
          child: IconImagesWid(
            iconName: 'add.png',
            width: 16,
            height: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
