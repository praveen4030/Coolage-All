import 'package:flutter/material.dart';
import 'package:placement/domain/company/company_model.dart';
import 'package:placement/domain/company/package_model.dart';
import 'package:placement/presentation/company/widgets/apply_company_tile.dart';

class AllCompaniesPage extends StatelessWidget {
  AllCompaniesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: ListView.builder(
        itemCount: companies.length,
        itemBuilder: (context, index) {
          return ApplyCompanyTile(
            companyModel: companies[index],
            jobPosition: "SDE 1",
            jobType: "Internship",
          );
        },
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
