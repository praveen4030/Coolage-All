import 'package:core/core.dart';
import 'package:flutter/material.dart';

class GetFromLinkedInWidget extends StatelessWidget {
  final bool isOrVisible;
  const GetFromLinkedInWidget({
    Key? key,
    this.isOrVisible = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 30,
            width: 102,
            decoration: BoxDecoration(
              color: Kolors.linkedinBG,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  text: "Get from ",
                  fontSize: 12,
                  color: Colors.white,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  color: Colors.white,
                  child: const IconImagesWid(
                    iconName: "linkedin_logo.png",
                    color: Kolors.linkedinBG,
                    height: 10,
                    width: 10,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        if (isOrVisible)
          CustomText(
            text: " / or",
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Kolors.greyBlue.withOpacity(0.5),
          ),
      ],
    );
  }
}
