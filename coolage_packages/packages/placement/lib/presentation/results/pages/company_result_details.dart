import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/domain/company/candidate_applied_model.dart';
import 'package:placement/presentation/results/widgets/branch_result_user_tile.dart';
import 'package:placement/presentation/results/widgets/text_number_tile.dart';

class CompanyResultDetailsPage extends StatelessWidget {
  final String company;

  const CompanyResultDetailsPage({
    Key? key,
    required this.company,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: CoolageAppBar(
            isCenter: false,
            backgroundColor: Kolors.greyWhite,
            actions: const [],
            text: 'Company Results',
            subtitle: company,
          ),
        ),
        body: Container(
          child: ListView(
            children: [
              companyUsers("Product Designer", [
                CandidateAppliedModel.empty(),
                CandidateAppliedModel.empty(),
                CandidateAppliedModel.empty(),
                CandidateAppliedModel.empty(),
                CandidateAppliedModel.empty(),
                CandidateAppliedModel.empty(),
              ]),
              companyUsers("Product Manager", [
                CandidateAppliedModel.empty(),
                CandidateAppliedModel.empty(),
                CandidateAppliedModel.empty(),
                CandidateAppliedModel.empty(),
                CandidateAppliedModel.empty(),
                CandidateAppliedModel.empty(),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget companyUsers(String company, List<CandidateAppliedModel> usersList) {
    return Container(
      child: Column(
        children: [
          TextNumberTile(
            count: usersList.length,
            text: company,
          ),
          ListView.builder(
            itemCount: usersList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BranchResultUserTile(
                candidateAppliedModel: usersList[index],
              );
            },
          )
        ],
      ),
    );
  }
}
