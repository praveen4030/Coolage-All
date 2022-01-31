part of core;

class CustomText extends StatelessWidget {
  final String? text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String fontFamily;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? lineheight;
  const CustomText({
    Key? key,
    @required this.text,
    this.fontSize = 20,
    this.fontWeight = FontWeight.w500,
    this.color = Kolors.greyBlack,
    this.fontFamily = Fonts.HEADING_FONT,
    this.textAlign = TextAlign.left,
    this.maxLines,
    this.overflow,
    this.lineheight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
          height: lineheight),
    );
  }
}
