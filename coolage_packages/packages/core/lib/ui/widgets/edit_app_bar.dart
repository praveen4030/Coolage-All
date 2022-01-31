part of core;

class CoolageEditAppBar extends StatelessWidget {
  final String? text;
  final Color titleColor;
  final Color? backgroundColor;
  final Function? onSaveTap;
  final bool isSaving;
  const CoolageEditAppBar({
    Key? key,
    @required this.text,
    this.titleColor = Kolors.greyBlack,
    this.backgroundColor = Kolors.greyWhite,
    this.onSaveTap,
    this.isSaving = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 0,
      backgroundColor: backgroundColor,
      flexibleSpace: editingMode(context),
    );
  }

  Widget editingMode(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          const CancelButton(),
          const Spacer(),
          Text(
            text!,
            style: TextStyle(
              fontFamily: Fonts.HEADING_FONT,
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: titleColor,
            ),
          ),
          const Spacer(),
          SaveButton(
            onTap: onSaveTap,
            isLoading: isSaving,
          ),
        ],
      ),
    );
  }
}
