import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college/domain/contact_info_group.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SelectContactInfoTypeDialog extends StatelessWidget {
  final Function onSelectContactInfoType;
  const SelectContactInfoTypeDialog({
    Key? key,
    required this.onSelectContactInfoType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Kolors.greyWhite,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
              child: Row(
                children: [
                  const Expanded(
                    child: CustomText(
                      text: "Select new contact info type",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      "assets/icons/cancel.png",
                      height: 16,
                      width: 16,
                      color: Kolors.greyBlue,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  tile(
                    'website',
                    "Website",
                    () {
                      Navigator.of(context).pop();
                      onSelectContactInfoType(
                          getContactInfoModel(Constants.website));
                    },
                    true,
                  ),
                  tile(
                    'phone',
                    "Phone",
                    () {
                      Navigator.of(context).pop();
                      onSelectContactInfoType(
                          getContactInfoModel(Constants.phoneNo));
                    },
                    true,
                  ),
                  tile(
                    'email_message',
                    "E-Mail",
                    () {
                      Navigator.of(context).pop();
                      onSelectContactInfoType(
                          getContactInfoModel(Constants.email));
                    },
                    false,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ContactInfoGroupModel getContactInfoModel(String type) {
    final doc = FirebaseFirestore.instance.collection("For new doc").doc();
    return ContactInfoGroupModel(
      title: "",
      value: '',
      id: doc.id,
      timestamp: Timestamp.now(),
      type: type,
    );
  }

  Widget tile(String icon, String text, Function onTap, bool isDivider) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 21,
          ),
          Image.asset(
            "assets/icons/$icon.png",
            height: 30,
            width: 30,
            color: Kolors.primaryColor1,
          ),
          const SizedBox(
            width: 27,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: text,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                const SizedBox(
                  height: 20,
                ),
                if (isDivider)
                  Container(
                    color: Kolors.greyBlue.withOpacity(0.5),
                    height: 1,
                    width: 160,
                  ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
