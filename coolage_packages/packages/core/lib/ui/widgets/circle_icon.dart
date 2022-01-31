part of core;

class CircleIcon extends StatelessWidget {
  final String? icon;
  final Color? color;
  final double? height;
  final double? width;
  final Function? onTap;
  final Color backgroundColor;
  const CircleIcon({
    Key? key,
    this.color,
    @required this.icon,
    @required this.height,
    @required this.width,
    @required this.onTap,
    this.backgroundColor = Kolors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Kolors.greyBlue.withOpacity(0.5),
              blurRadius: 4,
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            'assets/icons/$icon.png',
            height: height,
            width: width,
            color: color,
          ),
        ),
      ),
    );
  }
}
