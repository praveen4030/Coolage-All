part of core;

class PrimaryBorderButton extends StatelessWidget {
  final Function? onTap;
  final String? text;
  final Color? color;
  final double? width;

  const PrimaryBorderButton({
    Key? key,
    @required this.onTap,
    @required this.text,
    this.width,
    this.color = Kolors.redPrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BorderButton(
        height: 36,
        onTap: onTap,
        width: width,
        text: text,
        color: color,
        fontColor: color,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        fontFamily: Fonts.HEADING_FONT,
        borderRadius: 8,
      ),
    );
  }
}
