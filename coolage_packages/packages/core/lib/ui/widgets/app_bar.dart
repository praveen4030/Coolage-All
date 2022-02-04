part of core;

class CoolageAppBar extends StatelessWidget {
  final String? text;
  final List<Widget>? actions;
  final bool isCenter;
  final Color titleColor;
  final Color? backgroundColor;
  final String? subtitle;
  const CoolageAppBar({
    Key? key,
    @required this.actions,
    @required this.text,
    this.isCenter = false,
    this.titleColor = Kolors.greyBlack,
    this.backgroundColor = Kolors.greyWhite,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 0,
      backgroundColor: backgroundColor,
      flexibleSpace: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: IconWithWhiteBackground(
                iconName: 'back',
                iconColor: Kolors.greyBlue,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: isCenter
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  Container(
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
                  if (subtitle != null)
                    Container(
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        subtitle!,
                        style: const TextStyle(
                          fontFamily: Fonts.HEADING_FONT,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Kolors.greyBlue,
                        ),
                      ),
                    ),
                ],
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
