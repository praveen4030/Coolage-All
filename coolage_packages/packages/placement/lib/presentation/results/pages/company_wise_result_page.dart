import 'package:flutter/material.dart';
import 'package:placement/domain/company/company_model.dart';
import 'package:placement/domain/company/package_model.dart';
import 'package:placement/presentation/results/widgets/company_wise_result_tile.dart';

class CompanyWiseResultPage extends StatelessWidget {
  CompanyWiseResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: ListView.builder(
        itemCount: companies.length,
        itemBuilder: (context, index) {
          return CompanyWiseResultTile(
            company: companies[index].name,
            totalStudents: 12,
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
