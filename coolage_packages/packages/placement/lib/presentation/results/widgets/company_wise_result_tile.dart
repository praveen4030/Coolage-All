import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/presentation/results/pages/company_result_details.dart';
import 'package:placement/presentation/results/widgets/number_count_widget.dart';

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
    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (context) => const CompanyResultDetailsPage(
              company: "Flipkart",
            ),
          ),
        );
      },
      child: Container(
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
                NumberCountWidget(
                  count: totalStudents,
                ),
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
      ),
    );
  }
}
