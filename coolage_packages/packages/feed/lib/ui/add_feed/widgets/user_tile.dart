import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

class IndividualAddedTile extends StatelessWidget {
  final CoolUser coolUser;
  final Function? onCancel;
  final bool isSelected;
  final Function? onTapSelect;
  final Color backgroundColor;
  final double borderRadius;
  const IndividualAddedTile({
    Key? key,
    required this.coolUser,
    this.onCancel,
    this.isSelected = false,
    this.onTapSelect,
    this.backgroundColor = Kolors.greyWhite,
    this.borderRadius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTapSelect != null) {
          onTapSelect!();
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 6,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                color: backgroundColor,
              ),
              child: Row(
                children: [
                  UserProfileCircular(
                    image: coolUser.imageUrl,
                    size: 50,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: CustomText(
                                text: coolUser.name,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: Fonts.HEADING_FONT,
                                color: Kolors.greyBlack,
                              ),
                            ),
                            if (onCancel != null)
                              GestureDetector(
                                onTap: () {
                                  onCancel!();
                                },
                                child: const IconImagesWid(
                                  iconName: 'cancel.png',
                                  color: Kolors.greyBlue,
                                  height: 18,
                                  width: 18,
                                ),
                              ),
                            const SizedBox(
                              width: 4,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const CustomText(
                          text: "Phd - Architecture Department",
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontFamily: Fonts.HEADING_FONT,
                          color: Kolors.greyBlue,
                        )
                      ],
                    ),
                  ),
                  if (isSelected)
                    const IconImagesWid(
                      iconName: "tick.png",
                      height: 18,
                      width: 18,
                      color: Kolors.primaryColor1,
                    ),
                ],
              ),
            ),
            if (isSelected)
              const Divider(
                color: Kolors.primaryColor1,
                thickness: 2,
                height: 2,
              ),
          ],
        ),
      ),
    );
  }
}
