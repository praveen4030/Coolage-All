import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CompanyWiseResultTile extends StatelessWidget {
  final String company;
  final int totalStudents;
  const CompanyWiseResultTile({
    Key? key,
    required this.totalStudents,
    required this.company,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: CustomText(
                  text: company,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 40,
                color: Kolors.greyBlue.withOpacity(0.5),
                child: Center(
                  child: CustomText(
                    text: totalStudents.toString(),
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Kolors.greyBlue,
          ),
        ],
      ),
    );
  }
}
