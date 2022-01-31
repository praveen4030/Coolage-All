part of core;

class SquareIconWidget extends StatelessWidget {
  final String? icon;
  final Function? onTap;
  final Color backgroundColor;
  final bool isBoxShadow;
  const SquareIconWidget({
    Key? key,
    @required this.icon,
    @required this.onTap,
    this.backgroundColor = Colors.white,
    this.isBoxShadow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor,
          boxShadow: isBoxShadow
              ? const [
                  BoxShadow(),
                ]
              : [],
        ),
        child: Image.asset(
          'assets/icons/$icon.png',
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
