part of core;

class CardHeaderTextWidget extends StatelessWidget {
  final String? text;
  const CardHeaderTextWidget({
    Key? key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CustomText(
            text: text,
            color: Kolors.greyBlue,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Container(
              height: 1,
              color: Kolors.greyBlue,
            ),
          ),
        ],
      ),
    );
  }
}
