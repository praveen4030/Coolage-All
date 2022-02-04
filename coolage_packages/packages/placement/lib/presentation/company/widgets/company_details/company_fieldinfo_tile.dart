import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CompanyFieldInfoTile extends StatelessWidget {
  final String title;
  final String value;
  final bool isColorWhite;
  const CompanyFieldInfoTile({
    Key? key,
    required this.title,
    required this.value,
    this.isColorWhite = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      color: isColorWhite ? Kolors.white : Kolors.greyWhite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: '$title : ',
            color: Kolors.greyBlue,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          Expanded(
            child: CustomText(
              text: value,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
