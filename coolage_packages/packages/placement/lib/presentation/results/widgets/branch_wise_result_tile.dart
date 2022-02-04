import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:placement/presentation/results/pages/branch_result_details.dart';
import 'package:placement/presentation/results/widgets/number_count_widget.dart';

class BranchWiseResultTile extends StatelessWidget {
  final String branch;
  final int totalStudents;
  const BranchWiseResultTile({
    Key? key,
    required this.totalStudents,
    required this.branch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
            builder: (context) => const BranchResultDetailsPage(
                  branch: "Architecture and Planning",
                )));
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
                    text: branch,
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
