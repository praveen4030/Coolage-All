part of canteen;

class BillingTile extends StatelessWidget {
  final String? name;
  final String? qty;
  final String? price;
  final bool? isLast;
  const BillingTile({
    Key? key,
    @required this.isLast,
    @required this.name,
    @required this.price,
    @required this.qty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: CustomText(
                text: name,
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.CONTENT_FONT,
                fontSize: 14,
              ),
            ),
            Expanded(
              flex: 1,
              child: CustomText(
                text: 'x $qty',
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.CONTENT_FONT,
                fontSize: 14,
                color: Kolors.greyLightBlue,
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: CustomText(
                  text: '₹ $price',
                  fontWeight: FontWeight.w600,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        if (!isLast!)
          Divider(
            height: 1,
            color: Kolors.greyBlue.withOpacity(0.2),
          ),
        if (!isLast!)
          const SizedBox(
            height: 15,
          ),
      ],
    );
  }
}
