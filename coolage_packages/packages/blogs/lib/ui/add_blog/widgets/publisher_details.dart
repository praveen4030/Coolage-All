import 'package:core/core.dart';
import 'package:flutter/material.dart';

class PublisherDetailsWidget extends StatelessWidget {
  final TextEditingController? nameTEC;
  final TextEditingController? phoneNoTEC;
  final bool isNonEditablePublishingMode;

  const PublisherDetailsWidget({
    Key? key,
    @required this.nameTEC,
    @required this.phoneNoTEC,
    required this.isNonEditablePublishingMode,
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
            text: "Publisher Details",
          ),
          const SizedBox(
            height: 32,
          ),
          TextFieldLineWidget(
            isEnabled: !isNonEditablePublishingMode,
            controller: nameTEC,
            hint: "Name",
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : 'Please add your name';
            },
          ),
          const SizedBox(
            height: 24,
          ),
          TextFieldLineWidget(
            isEnabled: !isNonEditablePublishingMode,
            controller: phoneNoTEC,
            hint: "Contact Number",
            validationFn: (val) {
              return val?.isNotEmpty ?? false
                  ? null
                  : 'Please add your phone no';
            },
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
