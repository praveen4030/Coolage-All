import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/domain/company/company_model.dart';
import 'package:placement/presentation/company/widgets/company_details/company_fieldinfo_tile.dart';
import 'package:placement/presentation/company/widgets/company_details/company_header_tile.dart';

class CompanyPackageDetailsWidget extends StatelessWidget {
  final CompanyModel companyModel;
  const CompanyPackageDetailsWidget({
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
            text: "Package Details",
          ),
          SizedBox(
            height: 12,
          ),
          CompanyFieldInfoTile(
            title: "Cost to Company (CTC)",
            value: "6 lakh/annum ",
          ),
          CompanyFieldInfoTile(
            title: "Gross",
            value: "N.A.",
            isColorWhite: false,
          ),
          CompanyFieldInfoTile(
            title: "Perks and Bonuses",
            value: "Health insurance- 3LPA",
          ),
          CompanyFieldInfoTile(
            title: "Package Description",
            isColorWhite: false,
            value:
                "1100000-(minimum PF-taxes as applicable)\n\nFACILITIES: 5 days working \n\nFlexible working hours",
          ),
          CompanyFieldInfoTile(
            title: "Company Accomodation",
            value: "No.",
          ),
        ],
      ),
    );
  }
}
