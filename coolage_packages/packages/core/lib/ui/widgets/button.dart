part of core;

class ButtonWid extends StatelessWidget {
  final bool isLoading;
  final String? text;
  final double fontSize;
  final Function? onTap;
  final double? width;
  final bool? isDisabled;
  final double? height;
  final Color? color;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double borderRadius;
  const ButtonWid({
    Key? key,
    this.isLoading = false,
    this.text,
    this.fontSize = 17,
    this.isDisabled = false,
    @required this.onTap,
    this.height = 50,
    this.width,
    this.color = Kolors.primaryColor1,
    this.fontColor = Colors.white,
    this.fontWeight = FontWeight.w500,
    this.fontFamily = Fonts.HEADING_FONT,
    this.borderRadius = 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isLoading) {
          onTap!();
        }
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width ?? MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: isDisabled! ? Colors.grey : color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: isLoading
            ? buttonCircularProgress()
            : Text(
                text!,
                style: TextStyle(
                  color: fontColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  fontFamily: fontFamily,
                ),
              ),
      ),
    );
  }

  Container buttonCircularProgress() {
    return Container(
      height: 24,
      width: 24,
      alignment: Alignment.center,
      // margin: EdgeInsets.symmetric(vertical : 6),
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(fontColor),
      ),
    );
  }
}
