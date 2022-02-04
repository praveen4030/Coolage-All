import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/domain/company/company_model.dart';
import 'package:placement/presentation/company/pages/company_details_page.dart';
import 'package:placement/presentation/company/widgets/buttons/company_action_button.dart';

class ApplyCompanyTile extends StatelessWidget {
  final CompanyModel companyModel;
  final String jobPosition;
  final String jobType;
  const ApplyCompanyTile({
    Key? key,
    required this.companyModel,
    required this.jobType,
    required this.jobPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (context) => CompanyDetailsPage(
              companyModel: companyModel,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: companyModel.name,
                        color: Kolors.greyBlack,
                        fontSize: 18,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: jobPosition,
                            color: Kolors.greyBlue,
                            fontSize: 14,
                          ),
                          CustomText(
                            text: " - $jobType",
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Kolors.greyBlue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                CompanyActionButton(
                  companyModel: companyModel,
                  jobPosition: jobPosition,
                  jobType: jobType,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const CustomText(
                  text: "Open Till :  ",
                  color: Kolors.greyBlue,
                  fontSize: 12,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  text: Functions.getShortDate(
                      Timestamp.fromDate(companyModel.openTill)),
                  fontSize: 12,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            const SizedBox(
              height: 14,
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
