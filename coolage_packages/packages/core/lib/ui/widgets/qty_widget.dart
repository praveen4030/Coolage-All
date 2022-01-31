part of core;

class QuantityWidget extends StatefulWidget {
  final Function? onIncrement;
  final Function? onDecrement;
  final int qty;
  const QuantityWidget({
    Key? key,
    this.qty = 0,
    @required this.onDecrement,
    @required this.onIncrement,
  }) : super(key: key);

  @override
  _QuantityWidgetState createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 18),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              color: Kolors.greyWhite,
              child: CustomText(
                text: '${widget.qty.toInt()}',
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.CONTENT_FONT,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            left: 0,
            child: GestureDetector(
              onTap: () {
                widget.onDecrement!();
              },
              child: Container(
                alignment: Alignment.center,
                height: 32,
                width: 32,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.remove,
                  color: Kolors.greyBlue,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: GestureDetector(
              onTap: () {
                widget.onIncrement!();
              },
              child: Container(
                height: 32,
                width: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Kolors.greyBlue.withOpacity(0.5),
                    )
                  ],
                ),
                child: const Icon(
                  Icons.add,
                  color: Kolors.greyBlue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
