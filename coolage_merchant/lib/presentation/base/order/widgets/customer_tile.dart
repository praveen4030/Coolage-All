import 'package:coolage_merchant/presentation/core/functions/functions.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/circle_icon.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/user_profile_circular.dart';
import 'package:flutter/material.dart';

class CustomerTile extends StatelessWidget {
  final String? name;
  final String? image;
  final String? contactNo;
  final String? messageUid;
  const CustomerTile({
    Key? key,
    @required this.contactNo,
    @required this.image,
    @required this.name,
    @required this.messageUid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Kolors.white,
      ),
      child: Row(
        children: [
          UserProfileCircular(
            image: image,
            size: 60,
          ),
          const SizedBox(
            width: 21,
          ),
          CustomText(
            text: name,
            color: Kolors.fontColor,
            fontSize: 16,
          ),
          const Spacer(),
          CircleIcon(
            icon: 'call',
            height: 20,
            width: 20,
            backgroundColor: Kolors.secondaryColor1,
            color: Colors.white,
            onTap: () {
              Functions.launchURL('tel:$contactNo');
            },
          ),
          const SizedBox(
            width: 20,
          ),
          // CircleIcon(
          //   icon: 'message',
          //   height: 20,
          //   width: 20,
          //   backgroundColor: Kolors.secondaryColor1,
          //   color: Colors.white,
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }
}
