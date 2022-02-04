import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/domain/company/company_model.dart';
import 'package:placement/presentation/company/widgets/company_details/company_fieldinfo_tile.dart';
import 'package:placement/presentation/company/widgets/company_details/company_header_tile.dart';

class CompanyEligibilityDetailsWidget extends StatelessWidget {
  final CompanyModel companyModel;
  const CompanyEligibilityDetailsWidget({
    Key? key,
    required this.companyModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: const [
          CompanyHeaderTile(
            text: "Eligibility & Requirements",
          ),
          SizedBox(
            height: 12,
          ),
          CompanyFieldInfoTile(
            title: "Branch",
            value: "CSE",
          ),
          CompanyFieldInfoTile(
            title: "Year",
            value: "Open to All",
            isColorWhite: false,
          ),
          CompanyFieldInfoTile(
            title: "CGPA Requirement",
            value: "No",
          ),
          CompanyFieldInfoTile(
            title: "Cover Letter",
            value: "Not Required",
            isColorWhite: false,
          ),
          CompanyFieldInfoTile(
            title: "PPT Presence",
            value: "Required",
          ),
          CompanyFieldInfoTile(
            title: "Application Cost",
            value: "₹ 0",
            isColorWhite: false,
          ),
          CompanyFieldInfoTile(
            title: "Min. 12th Persentile ",
            value: "N.A.",
          ),
          CompanyFieldInfoTile(
            title: "Min. 10th Percentile",
            value: "N.A.",
            isColorWhite: false,
          ),
          CompanyFieldInfoTile(
            title: "Medical Requirement",
            value: "No",
          ),
        ],
      ),
    );
  }
}
