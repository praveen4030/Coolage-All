import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class GetTabIconWidget extends StatelessWidget {
  final String? icon;
  final bool? isCurrent;
  final int? number;
  final bool? isShowingOnlyRedDot;

  const GetTabIconWidget({
    Key? key,
    @required this.icon,
    @required this.isCurrent,
    @required this.number,
    this.isShowingOnlyRedDot = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.all(4),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isCurrent! ? Kolors.primaryColor1 : Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Kolors.greyBlue.withOpacity(0.5),
              )
            ],
          ),
          child: Image.asset(
            'assets/icons/$icon.png',
            height: 24,
            width: 24,
            color: isCurrent! ? Colors.white : Kolors.fontColor,
          ),
        ),
        if (number! > 0 || isShowingOnlyRedDot!)
          Container(
            height: 20,
            width: 20,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Kolors.secondaryColor1,
            ),
            child: isShowingOnlyRedDot!
                ? Container()
                : Center(
                    child: CustomText(
                      text: number!.toString(),
                      fontFamily: Fonts.CONTENT_FONT,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
          ),
      ],
    );
  }
}
