import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ConfirmAlertDialog extends StatelessWidget {
  final String? text;
  final Function? fn;
  const ConfirmAlertDialog({
    Key? key,
    @required this.fn,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirm"),
      content: CustomText(
        text: text!,
        color: Kolors.fontColor,
        fontFamily: Fonts.CONTENT_FONT,
        fontSize: 16,
      ),
      actions: [
        TextButton(
            onPressed: () {
              fn!();
              AutoRouter.of(context).pop();
            },
            child: const CustomText(
              text: "Yes",
              color: Kolors.primaryColor1,
            )),
        TextButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            child: const CustomText(
              text: "Cancel",
              color: Kolors.fontColor,
            )),
      ],
    );
  }
}
