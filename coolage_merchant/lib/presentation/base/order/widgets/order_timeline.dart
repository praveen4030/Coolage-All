import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:coolage_merchant/presentation/core/functions/functions.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OrderTimelineWidget extends StatelessWidget {
  final OrderModel? orderModel;
  const OrderTimelineWidget({
    Key? key,
    @required this.orderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          timelineStep(
            status: "Order Placed",
            timestamp: orderModel!.orderPlacedAtTimestamp,
            isCompleted: orderModel!.orderPlacedAtTimestamp != null,
            isOngoing: false,
          ),
          timelineStep(
            status: "Order Accepted",
            timestamp: orderModel!.orderAcceptedAtTimestamp,
            isCompleted: orderModel!.orderAcceptedAtTimestamp != null,
            isOngoing: checkIfOngoing(OrderStatus.pending),
          ),
          timelineStep(
            status: "Food Prepared",
            timestamp: orderModel!.orderPreparedAtTimestamp,
            isCompleted: orderModel!.orderPreparedAtTimestamp != null,
            isOngoing: checkIfOngoing(OrderStatus.preparing),
          ),
          timelineStep(
            status: "Order Delivered",
            timestamp: orderModel!.orderDeliveredAtTimestamp,
            isCompleted: orderModel!.orderDeliveredAtTimestamp != null,
            isOngoing: OrderStatus.prepared == orderModel!.orderStatus ||
                OrderStatus.delivering == orderModel!.orderStatus,
            isLast: true,
          ),
        ],
      ),
    );
  }

  bool checkIfOngoing(OrderStatus orderStatus) {
    if (orderStatus == orderModel!.orderStatus) {
      return true;
    }
    return false;
  }

  Widget timelineStep({
    String? status,
    Timestamp? timestamp,
    bool? isCompleted,
    bool? isOngoing, // if not ongoing then incompleted step
    bool? isLast = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (isCompleted!)
          completedStep(isLast: isLast)
        else if (isOngoing!)
          OngoingStepWidget(isLast: isLast, timestamp: orderModel!.timestamp!)
        else
          incompleteStep(isLast: isLast),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  CustomText(
                    text: status,
                    fontSize: 16,
                    color: isCompleted ? Kolors.black : Kolors.greyLightBlue,
                    fontFamily: Fonts.CONTENT_FONT,
                    fontWeight: FontWeight.w600,
                  ),
                  const Spacer(),
                  CustomText(
                    text: isCompleted
                        ? Functions.getDateAndTime(timestamp!)
                        : "Pending",
                    color: isCompleted ? Kolors.black : Kolors.greyLightBlue,
                    fontFamily: Fonts.CONTENT_FONT,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
              if (!isLast!)
                const SizedBox(
                  height: 40,
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget completedStep({bool? isLast = false}) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Kolors.greenColor,
          ),
          child: const Icon(
            Icons.check,
            color: Colors.white,
          ),
        ),
        if (!isLast!)
          Container(
            height: 40,
            width: 1,
            color: Kolors.secondaryColor1,
          )
      ],
    );
  }

  Widget incompleteStep({bool? isLast = false}) {
    return Column(
      children: [
        Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Kolors.greyLightBlue,
            ),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/icons/incomplete_step.png',
              height: 24,
              width: 24,
            )),
        if (!isLast!)
          Container(
            height: 40,
            width: 1,
            color: Kolors.secondaryColor1,
          )
      ],
    );
  }
}

class OngoingStepWidget extends StatefulWidget {
  final bool? isLast;
  final Timestamp? timestamp;
  const OngoingStepWidget({
    Key? key,
    @required this.isLast,
    @required this.timestamp,
  }) : super(key: key);

  @override
  _OngoingStepWidgetState createState() => _OngoingStepWidgetState();
}

class _OngoingStepWidgetState extends State<OngoingStepWidget> {
  String time = "";
  bool isHoursIncluded = false;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      final time = DateTime.now().difference(widget.timestamp!.toDate());
      getDuration(time);
    });
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  void getDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    if (duration.inHours >= 1) {
      time = "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
      isHoursIncluded = true;
    } else {
      time = "$twoDigitMinutes:$twoDigitSeconds";
      isHoursIncluded = false;
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(maxHeight: 70, maxWidth: 70),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Kolors.white,
            border: Border.all(
              color: Kolors.secondaryColor1,
            ),
          ),
          alignment: Alignment.center,
          child: CustomText(
            text: time,
            color: Kolors.secondaryColor1,
            fontWeight: FontWeight.w800,
            fontSize: isHoursIncluded ? 8 : 14,
          ),
        ),
        if (!widget.isLast!)
          Container(
            height: 40,
            width: 1,
            color: Kolors.secondaryColor1,
          )
      ],
    );
  }
}
