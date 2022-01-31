part of core;

class CoolageAppBar extends StatelessWidget {
  final String? text;
  final List<Widget>? actions;
  final bool isCenter;
  final Color titleColor;
  final Color? backgroundColor;
  const CoolageAppBar({
    Key? key,
    @required this.actions,
    @required this.text,
    this.isCenter = false,
    this.titleColor = Kolors.greyBlack,
    this.backgroundColor = Kolors.greyWhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 0,
      backgroundColor: backgroundColor,
      flexibleSpace: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            IconWithWhiteBackground(
              iconName: 'back',
              iconColor: Kolors.greyBlue,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                alignment: isCenter ? Alignment.center : Alignment.centerLeft,
                child: Text(
                  text!,
                  style: TextStyle(
                    fontFamily: Fonts.HEADING_FONT,
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: titleColor,
                  ),
                ),
              ),
            ),
            if (actions?.isEmpty ?? true)
              const SizedBox(
                width: 50,
              ),
            ...actions!,
          ],
        ),
      ),
    );
  }
}
