part of canteen;

class PickUpTimeWidget extends StatelessWidget {
  final DateTime? dateTime;
  const PickUpTimeWidget({
    Key? key,
    @required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 11,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: const [
          CustomText(
            text: "Today | ",
            color: Kolors.greyLightBlue,
            fontFamily: Fonts.CONTENT_FONT,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          CustomText(
            text: "6 PM",
            color: Colors.black,
            fontFamily: Fonts.CONTENT_FONT,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
