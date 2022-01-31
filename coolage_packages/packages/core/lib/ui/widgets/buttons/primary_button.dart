part of core;

class PrimaryButton extends StatelessWidget {
  final Function? onTap;
  final String? text;
  final double? width;
  final bool isLoading;
  const PrimaryButton({
    Key? key,
    @required this.onTap,
    @required this.text,
    this.width,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWid(
      onTap: () {
        onTap!();
      },
      width: width,
      height: 36,
      text: text,
      isLoading: isLoading,
      color: Kolors.primaryColor1,
      fontColor: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      fontFamily: Fonts.HEADING_FONT,
      borderRadius: 8,
    );
  }
}
