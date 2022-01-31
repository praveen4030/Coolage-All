import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class DateDropDownTillWidget extends StatelessWidget {
  final DateTime? selectedDate;
  final DateTime? initialDate;
  final DateTime? lastDate;
  final DateTime? firstDate;
  final Function onTap;
  final Function onSelectTillPresent;
  final String hint;
  final bool isTillPresent;
  const DateDropDownTillWidget({
    Key? key,
    required this.selectedDate,
    this.firstDate,
    this.initialDate,
    this.lastDate,
    required this.onTap,
    required this.isTillPresent,
    required this.onSelectTillPresent,
    this.hint = "Date",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        selectTillDialog(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (selectedDate != null || isTillPresent)
              SizedBox(
                height: 20,
                child: CustomText(
                  text: hint,
                  fontSize: 12,
                  color: Kolors.greyBlue,
                  fontWeight: FontWeight.w500,
                ),
              )
            else
              const SizedBox(
                height: 20,
              ),
            Row(
              children: [
                if (selectedDate != null)
                  Expanded(
                    child: CustomText(
                      text: intl.DateFormat("d/M/y").format(selectedDate!),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                else if (isTillPresent)
                  const Expanded(
                    child: CustomText(
                      text: "Present",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                else
                  Expanded(
                    child: CustomText(
                      text: hint,
                      color: Kolors.greyBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                const IconImagesWid(
                  width: 24,
                  height: 24,
                  color: Kolors.greyBlue,
                  iconName: 'calendar.png',
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              color: Kolors.greyBlue,
              height: 1,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> selectDate(BuildContext context) async {
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
  }

  void selectTillDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    onSelectTillPresent();
                    Navigator.of(context).pop();
                  },
                  child: const CustomText(
                    text: "Present",
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  color: Kolors.greyBlue,
                  height: 1,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    selectDate(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: const [
                        Expanded(
                          child: CustomText(
                            text: "Select Date",
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        IconImagesWid(
                          width: 22,
                          height: 22,
                          color: Kolors.greyBlue,
                          iconName: 'calendar.png',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
