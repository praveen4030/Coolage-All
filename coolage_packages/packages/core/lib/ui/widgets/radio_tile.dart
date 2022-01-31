part of core;

class RadioTileWidget extends StatelessWidget {
  final int? value;
  final int? grpNo;
  final String? text;
  final Function? onChange;
  const RadioTileWidget({
    Key? key,
    @required this.value,
    @required this.grpNo,
    @required this.text,
    @required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChange!();
      },
      child: Row(
        children: [
          grpNo == value ? selected() : unselected(),
          const SizedBox(width: 28),
          Expanded(
            child: CustomText(
              text: text,
              color: grpNo == value ? Kolors.greyBlack : Kolors.greyBlue,
              fontWeight: FontWeight.w500,
              fontFamily: Fonts.HEADING_FONT,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget unselected() {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            width: 2,
            color: Kolors.primaryColor1,
          )),
    );
  }

  Widget selected() {
    return Container(
      height: 30,
      width: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Kolors.primaryColor1,
      ),
      child: Center(
        child: const IconImagesWid(
          iconName: 'tick.png',
          height: 24,
          width: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
