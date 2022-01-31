part of core;

class SquareBorderIconWidget extends StatelessWidget {
  final String? icon;
  final Function? onTap;
  final Color? borderColor;
  final bool isBoxShadow;
  final double size;
  final double iconSize;
  const SquareBorderIconWidget({
    Key? key,
    @required this.icon,
    @required this.onTap,
    @required this.borderColor,
    this.isBoxShadow = false,
    this.iconSize = 20,
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: size,
        width: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: borderColor!,
          ),
          boxShadow: isBoxShadow
              ? const [
                  BoxShadow(),
                ]
              : [],
        ),
        child: Image.asset(
          'assets/icons/$icon.png',
          height: iconSize,
          width: iconSize,
          color: borderColor,
        ),
      ),
    );
  }
}
