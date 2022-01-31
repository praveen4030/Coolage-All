part of core;

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
              Navigator.of(context).pop();
            },
            child: const CustomText(
              text: "Yes",
              color: Kolors.primaryColor1,
            )),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const CustomText(
              text: "Cancel",
              color: Kolors.fontColor,
            )),
      ],
    );
  }
}
