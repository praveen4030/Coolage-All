import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:college/college.dart';
import 'package:placement/presentation/results/widgets/branch_wise_result_tile.dart';

class BranchWiseResultPage extends StatelessWidget {
  const BranchWiseResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list =
        CollegeGetters.getCurrentUserCollegeDepartments(CoreGetters.getContext);
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return BranchWiseResultTile(
            branch: list[index],
            totalStudents: 12,
          );
        },
      ),
    );
  }
}
