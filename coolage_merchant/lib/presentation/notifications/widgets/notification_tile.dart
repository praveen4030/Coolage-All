import 'package:coolage_merchant/domain/models/notification_model.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/app_bar.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/gradient_background.dart';
import 'package:coolage_merchant/presentation/core/widgets/user_profile_circular.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationTile extends StatelessWidget {
  final NotificationModel? model;
  const NotificationTile({
    Key? key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Row(
        children: [
          Image.asset(
            'assets/icons/avatar.png',
            height: 71,
            width: 71,
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: model!.name,
                      fontFamily: Fonts.HEADING_FONT,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    CustomText(
                      text: timeago.format(model!.timestamp!.toDate()),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Kolors.greyColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                CustomText(
                  text: model!.desc,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Kolors.greyColor,
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 1,
                  color: Kolors.greyBlue,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
