part of core;

class SearchWidget extends StatelessWidget {
  final String? text;
  final Function? onTap;
  const SearchWidget({
    Key? key,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icons/search2.png',
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 16,
            ),
            CustomText(
              text: text,
              fontFamily: Fonts.CONTENT_FONT,
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Kolors.greyLightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
