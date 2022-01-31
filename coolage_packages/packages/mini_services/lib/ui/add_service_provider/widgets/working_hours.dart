import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class WorkingHoursServiceTile extends StatefulWidget {
  final Timestamp? openFrom;
  final Timestamp? closeBy;
  final Function? selectOpenFromFn;
  final Function? selectCloseByFn;
  const WorkingHoursServiceTile({
    Key? key,
    @required this.closeBy,
    @required this.openFrom,
    @required this.selectCloseByFn,
    @required this.selectOpenFromFn,
  }) : super(key: key);

  @override
  State<WorkingHoursServiceTile> createState() =>
      _WorkingHoursServiceTileState();
}

class _WorkingHoursServiceTileState extends State<WorkingHoursServiceTile> {
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
            text: "Working Hours",
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              timingBox(timestamp: widget.openFrom, isOpenFrom: true),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 3,
                width: 20,
                color: Kolors.greyBlue,
              ),
              const SizedBox(
                width: 15,
              ),
              timingBox(timestamp: widget.closeBy, isOpenFrom: false),
            ],
          )
        ],
      ),
    );
  }

  Widget timingBox({Timestamp? timestamp, bool? isOpenFrom}) {
    timestamp ??= Timestamp.fromDate(DateTime(2021, 01, 01, 0, 0));

    final date = DateTime(
        2021, 1, 1, timestamp.toDate().hour, timestamp.toDate().minute);
    final time = intl.DateFormat("h:mm").format(date);
    final period = intl.DateFormat("a").format(date);

    return GestureDetector(
      onTap: () async {
        final TimeOfDay? pickedTime = await showTimePicker(
          context: context,
          initialTime: const TimeOfDay(hour: 8, minute: 0),
        );
        if (pickedTime == null) return;
        if (isOpenFrom!) {
          final pickedTimestamp = Timestamp.fromDate(
              DateTime(2021, 01, 01, pickedTime.hour, pickedTime.minute));
          widget.selectOpenFromFn!(pickedTimestamp);
        } else {
          final pickedTimestamp = Timestamp.fromDate(
              DateTime(2021, 01, 01, pickedTime.hour, pickedTime.minute));
          widget.selectCloseByFn!(pickedTimestamp);
        }
      },
      child: Container(
        height: 42,
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          border: Border.all(
            color: Kolors.greyBlue.withOpacity(0.5),
          ),
        ),
        child: Row(
          children: [
            CustomText(
              text: time,
              color: Kolors.greyBlack,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: Fonts.HEADING_FONT,
            ),
            const SizedBox(
              width: 8,
            ),
            CustomText(
              text: period,
              color: Kolors.greyBlue,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: Fonts.HEADING_FONT,
            ),
          ],
        ),
      ),
    );
  }
}
