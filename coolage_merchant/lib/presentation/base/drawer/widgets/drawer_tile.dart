import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerTile extends StatelessWidget {
  final String? icon;
  final String? text;
  final Function? onTap;
  const DrawerTile({
    Key? key,
    @required this.icon,
    @required this.onTap,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        padding: const EdgeInsets.only(
          bottom: 36,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icons/$icon.png',
              height: 24,
              width: 24,
              color: Kolors.greyBlue,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              text!,
              style: const TextStyle(
                fontFamily: Fonts.HEADING_FONT,
                fontSize: 16,
                color: Kolors.greyBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
