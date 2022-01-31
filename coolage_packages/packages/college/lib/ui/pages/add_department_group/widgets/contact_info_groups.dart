import 'package:college/domain/contact_info_group.dart';
import 'package:college/ui/pages/add_department_group/add_department_group.dart';
import 'package:college/ui/pages/add_department_group/widgets/contact_info_tile.dart';
import 'package:college/ui/pages/add_department_group/widgets/select_contact_info_type.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ContactInfoGroupsWidget extends StatefulWidget {
  final List<ContactInfoGroupModel> contactInfoList;
  final Function onChange;
  const ContactInfoGroupsWidget({
    Key? key,
    required this.contactInfoList,
    required this.onChange,
  }) : super(key: key);

  @override
  _ContactInfoGroupsWidgetState createState() =>
      _ContactInfoGroupsWidgetState();
}

class _ContactInfoGroupsWidgetState extends State<ContactInfoGroupsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CardHeaderTextWidget(
            text: "Contact Information",
          ),
          const SizedBox(
            height: 32,
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return ContactInfoTile(
                contactInfoGroupModel: widget.contactInfoList[index],
                onChange: () {
                  widget.onChange();
                },
                onRemove: () {
                  setState(() {
                    widget.contactInfoList.removeAt(index);
                  });
                },
              );
            },
            itemCount: widget.contactInfoList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () async {
              await showDialog(
                context: context,
                builder: (context) => SelectContactInfoTypeDialog(
                  onSelectContactInfoType: (model) {
                    setState(() {
                      widget.onChange();
                      widget.contactInfoList.add(model);
                    });
                  },
                ),
              );
            },
            child: Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.only(bottom: 56),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Kolors.greyBlue,
              ),
              child: const Center(
                child: CustomText(
                  text: "+",
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
