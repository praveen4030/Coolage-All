import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class SelectDateWidget extends StatelessWidget {
  final DateTime? selectedDate;
  final DateTime? initialDate;
  final DateTime? lastDate;
  final DateTime? firstDate;
  final Function onTap;
  final String hint;
  const SelectDateWidget({
    Key? key,
    required this.selectedDate,
    this.firstDate,
    this.initialDate,
    this.lastDate,
    required this.onTap,
    this.hint = "Date",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final date = await showDatePicker(
          context: context,
          initialDate: initialDate ?? DateTime.now(),
          firstDate: firstDate ?? DateTime(1900),
          lastDate: lastDate ?? DateTime.now(),
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
          onTap(date);
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
            if (selectedDate != null)
              CustomText(
                text: intl.DateFormat("d/M/y").format(selectedDate!),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              )
            else
              CustomText(
                text: hint,
                color: Kolors.greyBlue,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
          ],
        ),
      ),
    );
  }
}
