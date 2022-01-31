part of core;


class TextFieldTopText extends StatelessWidget {
  final String? text;
  const TextFieldTopText({
    Key? key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 4,
      ),
      child: Text(
        text!,
        style: const TextStyle(
          color: Kolors.greyBlack,
          fontSize: 14,
          fontFamily: Fonts.HEADING_FONT,
        ),
      ),
    );
  }
}
