import 'package:core/core.dart';
import 'package:flutter/material.dart';

class PublisherDetailsFeedWidget extends StatelessWidget {
  final TextEditingController? publisherNameTEC;
  final TextEditingController? publisherContactTEC;
  final bool isNonEditablePublishingMode;

  const PublisherDetailsFeedWidget({
    Key? key,
    this.isNonEditablePublishingMode = false,
    @required this.publisherContactTEC,
    @required this.publisherNameTEC,
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
            controller: publisherNameTEC,
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
            controller: publisherContactTEC,
            hint: "Contact Number",
            validationFn: (val) {
              return val?.isNotEmpty ?? false
                  ? Functions.validatePhoneNo(val!)
                      ? null
                      : 'Please enter valid phone no'
                  : 'Please add your phone no.';
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
