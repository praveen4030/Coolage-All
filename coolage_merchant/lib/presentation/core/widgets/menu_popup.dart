import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class MenuPopUpWidget extends StatelessWidget {
  final Widget? button;
  final List<String>? itemsList;
  final Function? onTap;
  const MenuPopUpWidget({
    Key? key,
    @required this.button,
    @required this.itemsList,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return List.generate(itemsList!.length, (index) {
          return PopupMenuItem(
            child: GestureDetector(
              onTap: () {
                onTap!(itemsList![index]);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: itemsList![index],
                    fontFamily: Fonts.CONTENT_FONT,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  if (index != itemsList!.length - 1)
                    const Divider(
                      color: Kolors.greyColor,
                    ),
                ],
              ),
            ),
          );
        });
      },
      child: button,
    );
  }
}
