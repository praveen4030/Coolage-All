import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:placement/presentation/results/pages/branch_result_details.dart';

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
            builder: (context) => const BranchResultDetailsPage()));
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
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Kolors.greyBlue.withOpacity(0.5),
                  ),
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
      ),
    );
  }
}
