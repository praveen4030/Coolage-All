import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

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
      height: 30,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              color: Colors.white,
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Kolors.greyBlue.withOpacity(0.5),
                    )
                  ],
                ),
                child: const CustomText(
                  text: "-",
                  fontSize: 22,
                  color: Kolors.greyBlue,
                  fontWeight: FontWeight.w600,
                  fontFamily: Fonts.CONTENT_FONT,
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
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 11),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: const CustomText(
                  text: "+",
                  fontSize: 22,
                  color: Kolors.greyBlue,
                  fontWeight: FontWeight.w600,
                  fontFamily: Fonts.CONTENT_FONT,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
