part of core;

class PriceWidget extends StatelessWidget {
  final CustomText? price;
  final double? size;
  final MainAxisAlignment mainAxisAlignment;
  const PriceWidget({
    Key? key,
    @required this.price,
    @required this.size,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          RupeesSign(size: size),
          const SizedBox(
            width: 4,
          ),
          price!,
        ],
      ),
    );
  }
}
