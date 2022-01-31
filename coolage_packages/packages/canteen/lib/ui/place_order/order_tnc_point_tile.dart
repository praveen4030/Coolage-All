part of canteen;

class OrderTncPointTile extends StatelessWidget {
  final String? point;
  final int? index;
  const OrderTncPointTile({
    Key? key,
    @required this.index,
    @required this.point,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            height: 14,
            width: 14,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Kolors.secondaryColor2,
            ),
            alignment: Alignment.center,
            child: CustomText(
              text: index!.toString(),
              fontSize: 9,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 7),
          Expanded(
            child: CustomText(
              text: point,
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
