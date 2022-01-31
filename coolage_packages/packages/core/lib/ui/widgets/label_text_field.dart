part of core;

class LabelTextFieldWidget extends StatelessWidget {
  final String? text;
  final Widget? textFormField;
  final double? fontSize;
  final double? topMargin;
  final double? height;
  const LabelTextFieldWidget({
    Key? key,
    @required this.text,
    @required this.textFormField,
    this.fontSize = 18,
    this.topMargin = 10,
    this.height = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: topMargin!),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          color: Kolors.white,
          alignment: Alignment.centerLeft,
          child: textFormField,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: CustomText(
            text: text,
            color: Kolors.greyBlue,
            fontSize: fontSize!,
          ),
        ),
      ],
    );
  }
}
