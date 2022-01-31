import 'package:core/core.dart';
import 'package:flutter/material.dart';

class UserTypeSelectWidget extends StatelessWidget {
  final String icon;
  final String text;
  final Function onTap;
  final bool isSelected;
  final String infoText;
  const UserTypeSelectWidget({
    Key? key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
    required this.text,
    required this.infoText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 172,
        width: 172,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 12,
              color: Kolors.greyBlue.withOpacity(0.5),
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
              child: Row(
                children: [
                  const Spacer(),
                  if (isSelected)
                    selectedWidget()
                  else
                    GestureDetector(
                      onTap: () {
                        showInfoDialog(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.info,
                          size: 20,
                          color: Kolors.greyBlue.withOpacity(0.5),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Image.asset(
              "assets/icons/$icon.png",
              width: 60,
              height: 60,
              color: isSelected
                  ? Kolors.primaryColor1
                  : Kolors.greyBlue.withOpacity(0.5),
            ),
            const Spacer(),
            CustomText(
              text: text,
              fontWeight: FontWeight.w400,
              fontSize: 22,
              color: isSelected ? Kolors.primaryColor1 : Kolors.greyBlack,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showInfoDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Kolors.greyWhite,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/icons/$icon.png",
                        width: 40,
                        height: 40,
                        color: Kolors.primaryColor1,
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        height: 40,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomText(
                              text: text,
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                              color: Kolors.primaryColor1,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const IconImagesWid(
                          iconName: "cancel.png",
                          color: Kolors.greyBlue,
                          height: 15,
                          width: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 42,
                    bottom: 18,
                  ),
                  child: CustomText(
                    text: infoText,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget selectedWidget() {
    return Container(
      height: 30,
      width: 30,
      decoration: const BoxDecoration(
        color: Kolors.primaryColor1,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Image.asset(
          "assets/icons/tick.png",
          height: 22,
          width: 22,
          color: Colors.white,
        ),
      ),
    );
  }
}
