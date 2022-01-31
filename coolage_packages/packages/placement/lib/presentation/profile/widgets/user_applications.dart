import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/domain/company/company_model.dart';
import 'package:placement/domain/company/package_model.dart';
import 'package:placement/presentation/company/widgets/apply_company_tile.dart';
import 'package:placement/presentation/profile/widgets/number_widget.dart';

class UserApplicationsWidget extends StatelessWidget {
  UserApplicationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          myApplicationTile(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: companies.length,
            itemBuilder: (context, index) {
              return ApplyCompanyTile(
                companyModel: companies[index],
                jobPosition: "SDE 1",
                jobType: "Internship",
              );
            },
          ),
        ],
      ),
    );
  }

  Widget myApplicationTile() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          const CustomText(
            text: "My Applications",
            color: Kolors.greyBlue,
            fontSize: 18,
          ),
          const SizedBox(
            width: 8,
          ),
          const NumberWidget(number: 5),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Container(
              height: 1,
              color: Kolors.greyBlue,
            ),
          ),
        ],
      ),
    );
  }

  List<CompanyModel> companies = [
    CompanyModel(
      name: "Petpooja",
      batchedAllowed: [],
      candidatesApplied: [],
      openForBranches: [],
      openTill: DateTime(2022),
      packageModel: PackageModel.empty(),
      recruitmentRoles: [],
      rolesOpen: [],
    ),
    CompanyModel(
      name: "Petpooja",
      batchedAllowed: [],
      candidatesApplied: [],
      openForBranches: [],
      openTill: DateTime(2022),
      packageModel: PackageModel.empty(),
      recruitmentRoles: [],
      rolesOpen: [],
    ),
    CompanyModel(
      name: "Petpooja",
      batchedAllowed: [],
      candidatesApplied: [],
      openForBranches: [],
      openTill: DateTime(2022),
      packageModel: PackageModel.empty(),
      recruitmentRoles: [],
      rolesOpen: [],
    ),
    CompanyModel(
      name: "Petpooja",
      batchedAllowed: [],
      candidatesApplied: [],
      openForBranches: [],
      openTill: DateTime(2022),
      packageModel: PackageModel.empty(),
      recruitmentRoles: [],
      rolesOpen: [],
    ),
    CompanyModel(
      name: "Petpooja",
      batchedAllowed: [],
      candidatesApplied: [],
      openForBranches: [],
      openTill: DateTime(2022),
      packageModel: PackageModel.empty(),
      recruitmentRoles: [],
      rolesOpen: [],
    ),
    CompanyModel(
      name: "Petpooja",
      batchedAllowed: [],
      candidatesApplied: [],
      openForBranches: [],
      openTill: DateTime(2022),
      packageModel: PackageModel.empty(),
      recruitmentRoles: [],
      rolesOpen: [],
    ),
  ];
}
