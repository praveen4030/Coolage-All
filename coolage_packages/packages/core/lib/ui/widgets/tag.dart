part of core;

class Tag extends StatelessWidget {
  final String? tag;
  final Function? onTap;
  final bool isSelected;
  const Tag({
    Key? key,
    @required this.tag,
    this.isSelected = false,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        margin: const EdgeInsets.only(),
        decoration: BoxDecoration(
          color: isSelected
              ? Kolors.primaryColor1
              : Kolors.greyLightBlue.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${tag!.characters.first.toUpperCase()}${tag!.substring(1)}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: Fonts.CONTENT_FONT,
                fontWeight: FontWeight.w300,
                color: isSelected ? Colors.white : Kolors.greyBlack,
              ),
            ),
            if (isSelected)
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset(
                  'assets/icons/cancel.png',
                  height: 10,
                  width: 10,
                  color: Colors.white.withOpacity(0.5),
                ),
              )
          ],
        ),
      ),
    );
  }
}
