import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/domain/company/company_model.dart';
import 'package:placement/presentation/company/widgets/company_details/company_fieldinfo_tile.dart';
import 'package:placement/presentation/company/widgets/company_details/company_header_tile.dart';

class CompanyRecruitmentStageWidget extends StatelessWidget {
  final CompanyModel companyModel;
  const CompanyRecruitmentStageWidget({
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
            text: "Recruitment Stages",
          ),
          SizedBox(
            height: 12,
          ),
          CompanyFieldInfoTile(
            title: "PPT Presentation",
            value: "CSE",
          ),
          CompanyFieldInfoTile(
            title: "Aptitude Test",
            value: "Open to All",
            isColorWhite: false,
          ),
          CompanyFieldInfoTile(
            title: "Technical Exam",
            value: "No",
          ),
          CompanyFieldInfoTile(
            title: "Technical Interview",
            value: "Not Required",
            isColorWhite: false,
          ),
          CompanyFieldInfoTile(
            title: "HR Interview",
            value: "Required",
          ),
        ],
      ),
    );
  }
}
