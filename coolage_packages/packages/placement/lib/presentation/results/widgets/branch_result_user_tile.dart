import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/domain/company/candidate_applied_model.dart';

class BranchResultUserTile extends StatelessWidget {
  final CandidateAppliedModel candidateAppliedModel;
  const BranchResultUserTile({
    Key? key,
    required this.candidateAppliedModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => UserProfilePage(coolUser: coolUser),
        //   ),
        // );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Kolors.skyBlueColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Kolors.greyBlue.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: UserProfileCircular(
                    image: candidateAppliedModel.imageUrl,
                    size: 60,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: candidateAppliedModel.name,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      CustomText(
                        text: candidateAppliedModel.jobPosition,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Kolors.greyBlue,
                      ),
                    ],
                  ),
                ),
                CustomText(
                  text: DateTimeFunctions.getShortDate(
                      candidateAppliedModel.appliedAt),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Kolors.greyBlue,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Kolors.greyBlue.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
