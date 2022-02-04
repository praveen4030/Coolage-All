import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/domain/company/company_model.dart';

class CompanyBasicDetailsWidget extends StatelessWidget {
  final CompanyModel companyModel;
  const CompanyBasicDetailsWidget({
    Key? key,
    required this.companyModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Kolors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Kolors.greyBlue.withOpacity(0.5),
          ),
        ],
      ),
      child: Column(
        children: [
          detailTile("Position", companyModel.recruitmentRoles[0]),
          detailTile("Type", companyModel.rolesOpen[0]),
          detailTile("Open Till",
              DateTimeFunctions.getFullDate(companyModel.openTill)),
          const SizedBox(
            height: 20,
          ),
          downloadWidget(),
        ],
      ),
    );
  }

  Widget downloadWidget() {
    return Container(
      child: Row(
        children: [
          const IconImagesWid(
            iconName: 'download_button.png',
            color: Kolors.primaryColor1,
          ),
          const SizedBox(
            width: 10,
          ),
          const CustomText(
            text: 'Download Brochure',
            color: Kolors.primaryColor1,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }

  Widget detailTile(String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          CustomText(
            text: '$title : ',
            color: Kolors.greyBlue,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          CustomText(
            text: subtitle,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          )
        ],
      ),
    );
  }
}
