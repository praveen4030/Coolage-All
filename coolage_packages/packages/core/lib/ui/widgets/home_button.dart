part of core;

class HomeGradientButton extends StatelessWidget {
  final String? text;
  final String? icon;
  final Color? startingColor;
  final Color? endingColor;
  final Function? onTap;
  const HomeGradientButton({
    Key? key,
    @required this.icon,
    @required this.text,
    @required this.endingColor,
    @required this.startingColor,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 90, //71
        width: 90, //71
        padding: EdgeInsets.all(12), //8
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              blurRadius: 12,
              offset: Offset(0, 4),
              color: Kolors.greyBlue,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              startingColor!,
              endingColor!,
            ],
          ),
        ),
        child: Column(
          //      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/icons/$icon.png',
              height: 45, //36
              width: 60, //36
            ),
            Text(
              text!,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: Fonts.HEADING_FONT,
                fontWeight: FontWeight.w400,
                fontSize: 14, //10
              ),
            )
          ],
        ),
      ),
    );
  }
}
