import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/domain/company/company_model.dart';
import 'package:placement/presentation/company/widgets/company_details/company_fieldinfo_tile.dart';
import 'package:placement/presentation/company/widgets/company_details/company_header_tile.dart';

class CompanyDescWidget extends StatelessWidget {
  final CompanyModel companyModel;
  const CompanyDescWidget({
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
            text: "Description",
          ),
          SizedBox(
            height: 12,
          ),
          CompanyFieldInfoTile(
            title: "Company Name",
            value: "Fewton Brands Pvt. Ltd.",
          ),
          CompanyFieldInfoTile(
            title: "Posting Location",
            value: "Jaipur, Rajasthan",
            isColorWhite: false,
          ),
          CompanyFieldInfoTile(
            title: "Stipend Description",
            value: "₹ 6,000 / month",
          ),
          CompanyFieldInfoTile(
            title: "Company Description",
            value:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
            isColorWhite: false,
          ),
          CompanyFieldInfoTile(
            title: "Work Description",
            value:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
          ),
        ],
      ),
    );
  }
}
