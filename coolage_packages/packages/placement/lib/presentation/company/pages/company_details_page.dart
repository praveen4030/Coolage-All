import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/domain/company/company_model.dart';
import 'package:placement/presentation/company/widgets/company_details/company_basic_details.dart';
import 'package:placement/presentation/company/widgets/company_details/company_desc.dart';
import 'package:placement/presentation/company/widgets/company_details/company_eligibility_details.dart';
import 'package:placement/presentation/company/widgets/company_details/company_package_details.dart';
import 'package:placement/presentation/company/widgets/company_details/company_recruitment_stage.dart';

class CompanyDetailsPage extends StatelessWidget {
  final CompanyModel companyModel;
  const CompanyDetailsPage({
    Key? key,
    required this.companyModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: CoolageAppBar(
            isCenter: true,
            backgroundColor: Kolors.greyWhite,
            actions: const [],
            text: companyModel.name,
          ),
        ),
        body: Container(
          color: Kolors.greyWhite,
          child: ListView(
            children: [
              CompanyBasicDetailsWidget(
                companyModel: companyModel,
              ),
              const SizedBox(
                height: 25,
              ),
              CompanyEligibilityDetailsWidget(
                companyModel: companyModel,
              ),
              const SizedBox(
                height: 25,
              ),
              CompanyDescWidget(
                companyModel: companyModel,
              ),
              const SizedBox(
                height: 25,
              ),
              CompanyPackageDetailsWidget(
                companyModel: companyModel,
              ),
              const SizedBox(
                height: 25,
              ),
              CompanyRecruitmentStageWidget(
                companyModel: companyModel,
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
