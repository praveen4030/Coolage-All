part of core;

class SelectedTile extends StatelessWidget {
  final bool isSelected;
  final String? text;
  final Function? onTap;
  const SelectedTile({
    Key? key,
    this.isSelected = false,
    @required this.onTap,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 6,
        ),
        color: isSelected ? Kolors.greyWhite : null,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 16),
                Expanded(
                  child: CustomText(
                    text: text,
                    fontSize: 18,
                    color: Kolors.greyBlack,
                    fontFamily: Fonts.HEADING_FONT,
                    fontWeight: FontWeight.w400,
                    // overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (isSelected)
                  const IconImagesWid(
                    iconName: 'tick.png',
                    height: 20,
                    width: 20,
                    color: Kolors.primaryColor1,
                  ),
                const SizedBox(width: 12),
              ],
            ),
            const SizedBox(height: 14),
            if (isSelected)
              const Divider(
                color: Kolors.primaryColor1,
                height: 2,
                thickness: 2,
              ),
          ],
        ),
      ),
    );
  }
}
