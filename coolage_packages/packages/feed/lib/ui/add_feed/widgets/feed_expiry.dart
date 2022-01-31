import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class FeedExpiryWidget extends StatelessWidget {
  final DateTime? expiryDateTime;
  final Function? selectExpiryDateTime;
  final bool isNonEditablePublishingMode;

  const FeedExpiryWidget({
    Key? key,
    @required this.expiryDateTime,
    @required this.selectExpiryDateTime,
    this.isNonEditablePublishingMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const CardHeaderTextWidget(
            text: "Feed Expiry",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: "This feed event will disappear after the set date is over ",
            fontFamily: Fonts.CONTENT_FONT,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Kolors.greyBlue,
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () async {
              if (isNonEditablePublishingMode) return;
              final date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(
                  const Duration(days: 365),
                ),
                builder: (BuildContext context, Widget? child) {
                  return Theme(
                    data: ThemeData.light().copyWith(
                      colorScheme: const ColorScheme.light(
                        primary: Kolors.primaryColor1,
                      ),
                    ),
                    child: child ?? Container(),
                  );
                },
              );
              if (date != null) {
                selectExpiryDateTime!(date);
              }
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Kolors.greyBlue,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 10,
              ),
              child: Row(
                children: [
                  const IconImagesWid(
                    width: 30,
                    height: 30,
                    color: Kolors.greyBlue,
                    iconName: 'calendar.png',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  expiryDateTime != null
                      ? CustomText(
                          text:
                              intl.DateFormat("d/M/y").format(expiryDateTime!),
                          color: Kolors.greyBlack,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: Fonts.HEADING_FONT,
                        )
                      : CustomText(
                          text: "Date",
                          color: Kolors.greyBlue,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: Fonts.HEADING_FONT,
                        ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
