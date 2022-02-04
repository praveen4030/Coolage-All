import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CompanyHeaderTile extends StatelessWidget {
  final String text;
  const CompanyHeaderTile({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      color: Kolors.greyWhite,
      child: Row(
        children: [
          CustomText(
            text: text,
            color: Kolors.greyBlue,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
