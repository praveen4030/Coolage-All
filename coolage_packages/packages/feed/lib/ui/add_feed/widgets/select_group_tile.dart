import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SelectGroupTile extends StatelessWidget {
  final String text;
  final Function onSelect;
  final Function onCancel;
  final bool isEditable;
  const SelectGroupTile({
    Key? key,
    required this.text,
    required this.onSelect,
    required this.onCancel,
    this.isEditable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isEditable) onSelect();
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: Kolors.greyWhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: CustomText(
                text: text,
                color: Kolors.greyBlack,
                fontSize: 14,
                fontFamily: Fonts.HEADING_FONT,
              ),
            ),
            if (isEditable)
              SquareBorderIconWidget(
                icon: 'edit',
                borderColor: Kolors.primaryColor1,
                onTap: () {
                  onSelect();
                },
                size: 28,
                iconSize: 16,
              ),
            const SizedBox(
              width: 24,
            ),
            InkWell(
              onTap: () {
                onCancel();
              },
              child: const IconImagesWid(
                iconName: 'cancel.png',
                height: 18,
                width: 18,
                color: Kolors.greyBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
