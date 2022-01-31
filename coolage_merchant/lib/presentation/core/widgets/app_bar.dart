import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/icon_with_white_background.dart';
import 'package:flutter/material.dart';

class CoolageAppBar extends StatelessWidget {
  final String? text;
  final List<Widget>? actions;
  final bool isCenter;
  final Color titleColor;
  const CoolageAppBar({
    Key? key,
    @required this.actions,
    @required this.text,
    this.isCenter = false,
    this.titleColor = Kolors.greyBlack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 0,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            IconWithWhiteBackground(
              iconName: 'back',
              iconColor: titleColor,
              onTap: () {
                AutoRouter.of(context).pop();
              },
              iconSize: 25,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text!,
                style: TextStyle(
                  fontFamily: Fonts.HEADING_FONT,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: titleColor,
                ),
              ),
            ),
            ...actions!,
          ],
        ),
      ),
    );
  }
}
