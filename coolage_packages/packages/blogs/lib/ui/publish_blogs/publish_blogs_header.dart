import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PublishBlogsHeader extends StatelessWidget {
  final String category;
  final Function onChange;
  final DateTime? selectedDate;
  final Function? onDateChange;
  final Function onCancelDate;
  const PublishBlogsHeader({
    Key? key,
    required this.category,
    required this.onChange,
    required this.selectedDate,
    required this.onDateChange,
    required this.onCancelDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16, top: 8),
      child: Row(
        children: [
          menuButton(),
          const SizedBox(
            width: 10,
          ),
          CustomText(
            text: category,
            color: Kolors.greyBlack,
            fontFamily: Fonts.HEADING_FONT,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          const Spacer(),
          calendarButton(context),
        ],
      ),
    );
  }

  Widget calendarButton(BuildContext context) {
    String selectedDateStr = "";
    if (selectedDate != null) {
      selectedDateStr = DateFormat("d MMM. y").format(selectedDate!);
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Kolors.greyBlue,
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          if (selectedDate != null)
            Container(
              padding: const EdgeInsets.only(
                left: 8,
                top: 8,
                bottom: 8,
                right: 48,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      onCancelDate();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Kolors.greyWhite.withOpacity(0.2),
                      ),
                      child: const Center(
                        child: IconImagesWid(
                          iconName: 'cancel.png',
                          color: Colors.white,
                          height: 12,
                          width: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  CustomText(
                    text: selectedDateStr,
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: Fonts.HEADING_FONT,
                  )
                ],
              ),
            ),
          GestureDetector(
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                lastDate: DateTime.now(),
                firstDate: DateTime.now().subtract(
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
                onDateChange!(date);
              }
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Kolors.greyBlue.withOpacity(0.5),
                  )
                ],
              ),
              child: const Center(
                child: IconImagesWid(
                  iconName: 'calendar.png',
                  height: 28,
                  width: 28,
                  color: Kolors.greyBlue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget menuButton() {
    final list = [
      "All",
      "New",
      "Live",
      "Declined",
    ];
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      itemBuilder: (context) {
        return List.generate(list.length, (index) {
          return PopupMenuItem(
            padding: EdgeInsets.zero,
            child: Container(
              width: 222,
              child: SelectedTile(
                onTap: () {
                  onChange(list[index]);
                  Navigator.of(context).pop();
                },
                isSelected: list[index] == category,
                text: list[index],
              ),
            ),
          );
        });
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Kolors.greyBlue.withOpacity(0.5),
              )
            ]),
        child: const Center(
          child: IconImagesWid(
            iconName: 'menu.png',
            height: 28,
            width: 28,
            color: Kolors.greyBlue,
          ),
        ),
      ),
    );
  }
}
