import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ServiceDetailsTile extends StatelessWidget {
  final TextEditingController? titleTEC;
  final TextEditingController? summaryTEC;
  const ServiceDetailsTile({
    Key? key,
    @required this.titleTEC,
    @required this.summaryTEC,
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
            text: "Service Details",
          ),
          const SizedBox(
            height: 32,
          ),
          TextFieldLineWidget(
            controller: titleTEC,
            hint: "Title",
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : 'Please add your title';
            },
          ),
          const SizedBox(
            height: 42,
          ),
          TextFieldBoxWidget(
            controller: summaryTEC,
            minLinesForHeight: 4,
            hint: "Summary",
            maxLength: 50,
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : 'Please add summary.';
            },
          ),
        ],
      ),
    );
  }
}
