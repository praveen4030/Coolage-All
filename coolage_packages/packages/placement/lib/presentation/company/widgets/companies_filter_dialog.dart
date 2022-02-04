import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CompaniesFilterDialog extends StatelessWidget {
  const CompaniesFilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).viewInsets,
      color: Kolors.greyWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: Kolors.greyWhite,
            width: MediaQuery.of(context).size.width,
            child: const CustomText(
              text: "Filters",
            ),
          ),
          tagsWidget(),
          const SizedBox(height: 12),
          viewExpiredWidget(),
          const SizedBox(height: 12),
          sortByWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWid(
                height: 75,
                color: Kolors.greyBlue,
                onTap: () {
                  Navigator.of(context).pop();
                },
                text: "Apply",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget tagsWidget() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          SelectTagsWidget(
            hint: "Profile",
            tagsList: [],
            onChange: () {},
          ),
        ],
      ),
    );
  }

  Widget viewExpiredWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      color: Colors.white,
      child: Row(
        children: [
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
              onChanged: (val) {},
              value: true,
              activeColor: Kolors.greyWhite,
              checkColor: Kolors.greyBlue,
            ),
          ),
          const Expanded(
            child: CustomText(
              text: "View Expired",
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }

  Widget sortByWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      color: Colors.white,
      child: Row(
        children: [
          const Expanded(
            child: CustomText(
              text: "Sort By :",
              fontSize: 18,
            ),
          ),
          Expanded(
            child: DropDownList(
              list: Lists.sexList,
              onChanged: (value) {},
              value: "",
              hint: "Date posted",
            ),
          ),
        ],
      ),
    );
  }
}
