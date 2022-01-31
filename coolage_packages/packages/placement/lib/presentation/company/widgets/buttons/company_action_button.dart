import 'package:flutter/material.dart';
import 'package:placement/domain/company/company_model.dart';
import 'package:placement/presentation/company/widgets/buttons/applied_button.dart';
import 'package:placement/presentation/company/widgets/buttons/apply_button.dart';
import 'package:placement/presentation/company/widgets/buttons/closed_for_you_button.dart';
import 'package:placement/presentation/company/widgets/buttons/expired_button.dart';
import 'package:placement/presentation/company/widgets/buttons/not_selected_button.dart';
import 'package:placement/presentation/company/widgets/buttons/selected_button.dart';
import 'package:placement/presentation/company/widgets/buttons/shortlisted_button.dart';

class CompanyActionButton extends StatelessWidget {
  final CompanyModel companyModel;
  final String jobPosition;
  final String jobType;
  const CompanyActionButton({
    Key? key,
    required this.companyModel,
    required this.jobType,
    required this.jobPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CloseForYouButton();
  }
}
