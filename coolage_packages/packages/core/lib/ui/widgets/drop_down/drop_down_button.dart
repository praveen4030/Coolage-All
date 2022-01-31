part of core;

class DropDownButton extends StatelessWidget {
  final String? value;
  final List<String>? list;
  final Function? onChanged;
  final String? hint;
  final double? fontSize;
  final bool? isBorder;
  const DropDownButton({
    Key? key,
    @required this.list,
    @required this.onChanged,
    @required this.value,
    @required this.hint,
    this.isBorder = false,
    this.fontSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
      
        borderRadius: BorderRadius.circular(5),
        border: !isBorder!
            ? null
            : Border.all(
                color: Kolors.greyLight,
                width: 0.8,
              ),
      ),
      padding: const EdgeInsets.all(6),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: Text(
            hint!,
            style: const TextStyle(
              color: Kolors.fontColor,
              fontSize: 12,
              fontFamily: Fonts.POPPINS,
              fontWeight: FontWeight.w600,
            ),
          ),
          style: const TextStyle(
            fontSize: 20,
            color: Kolors.greyBlack,
            fontFamily: Fonts.CONTENT_FONT,
            fontWeight: FontWeight.w600,
          ),
          items: list?.map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: [
                      Text(
                        value,
                        style: TextStyle(
                          fontSize: fontSize,
                          color: Kolors.greyBlack,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList() ??
              [],
          onChanged: (val) {
            onChanged!(val);
          },
        ),
      ),
    );
  }
}
