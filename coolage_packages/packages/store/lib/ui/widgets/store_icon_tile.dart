import 'package:core/core.dart';

import 'package:flutter/material.dart';

class StoreIconTile extends StatelessWidget {
  final String? iconName;
  final String? name;
  final Function? onTap;
  final bool isUsed;
  const StoreIconTile({
    Key? key,
    @required this.iconName,
    @required this.name,
    @required this.onTap,
    this.isUsed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        width: 73,
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isUsed
                    ? Kolors.primaryColor1
                    : Kolors.greyBlue.withOpacity(0.25),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/icons/stores/$iconName.png',
                color: isUsed ? Colors.white : null,
                height: 25,
                width: 25,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            CustomText(
              text: name,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 12,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
