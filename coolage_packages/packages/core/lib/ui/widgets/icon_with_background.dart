part of core;

class IconWithBackground extends StatelessWidget {
  final String? iconName;
  final double? backgroundSize;
  final double? iconSize;
  final Function? onTap;
  final Color backgroundColor;
  final Color? iconColor;
  final double opacity;
  const IconWithBackground({
    Key? key,
    @required this.iconName,
    this.backgroundSize = 50,
    this.iconSize = 25,
    @required this.onTap,
    this.backgroundColor = Colors.white,
    this.iconColor,
    this.opacity = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: backgroundSize,
        width: backgroundSize,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(opacity),
          borderRadius: BorderRadius.circular(8),
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 4,
          //     color: Kolors.greyBlue.withOpacity(0.5),
          //   )
          // ],
        ),
        child: Center(
          child: Image.asset(
            'assets/icons/$iconName.png',
            height: iconSize,
            width: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
