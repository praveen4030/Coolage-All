part of cards;

class EmptyCardWidget extends StatelessWidget {
  final Function onTap;
  const EmptyCardWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 210,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 72,
              width: 72,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Kolors.greyBlue,
              ),
              child: const IconImagesWid(
                iconName: 'add.png',
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            CustomText(
              text: "Add a Photo",
              fontWeight: FontWeight.w600,
              fontSize: 18,
              fontFamily: Fonts.CONTENT_FONT,
              color: Kolors.greyLightBlue.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
