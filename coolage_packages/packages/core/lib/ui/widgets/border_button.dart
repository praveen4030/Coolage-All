part of core;

class BorderButton extends StatelessWidget {
  final bool isLoading;
  final String? text;
  final double fontSize;
  final Function? onTap;
  final bool? isFavouriteIcon;
  final Color? color;
  final double? width;
  final Color? fontColor;
  final double borderRadius;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? height;
  final Color? backgroundColor;

  const BorderButton({
    Key? key,
    this.isLoading = false,
    this.text,
    this.fontSize = 17,
    @required this.onTap,
    this.isFavouriteIcon = false,
    this.width,
    this.height = 50,
    this.color = Kolors.secondaryColor1,
    this.fontColor = Kolors.secondaryColor1,
    this.borderRadius = 20,
    this.fontWeight = FontWeight.w500,
    this.fontFamily = Fonts.HEADING_FONT,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isLoading) {
          onTap!();
        }
      },
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width ?? MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
          vertical: isLoading ? 0 : 4,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: color!,
          ),
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
      alignment: Alignment.center,
      // margin: EdgeInsets.symmetric(vertical : 6),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
      ),
    );
  }
}
