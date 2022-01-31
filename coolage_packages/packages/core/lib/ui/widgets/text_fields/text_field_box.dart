part of core;

class TextFieldBoxWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validationFn;
  final String? hint;
  final int? minLinesForHeight;
  final int? maxLinesForHeight;
  final int? maxLength;
  final bool isEnabled;
  final Function? onChanged;
  final TextStyle? labelStyle;
  const TextFieldBoxWidget({
    Key? key,
    @required this.controller,
    @required this.hint,
    this.validationFn,
    this.minLinesForHeight = 1,
    this.maxLinesForHeight,
    this.maxLength,
    this.labelStyle,
    this.isEnabled = true,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        enabled: isEnabled,
        controller: controller,
        validator: validationFn,
        minLines: minLinesForHeight,
        maxLines: maxLinesForHeight,
        maxLength: maxLength,
        textAlignVertical: TextAlignVertical.top,
        onChanged: (val) {
          if (onChanged != null) {
            onChanged!(val);
          }
        },
        buildCounter: (_,
                {int currentLength = 0,
                bool isFocused = false,
                int? maxLength}) =>
            maxLength == null
                ? null
                : Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                        alignment: Alignment.centerRight,
                        child: CustomText(
                          text: currentLength.toString() +
                              "/" +
                              maxLength.toString() +
                              " Words",
                          color: Kolors.greyBlue,
                          fontSize: 12,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
        style: const TextStyle(
          color: Kolors.greyBlack,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: Fonts.HEADING_FONT,
        ),
        scrollPadding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 12,
        ),
        decoration: InputDecoration(
          alignLabelWithHint: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 12,
          ),
          labelText: hint,
          labelStyle: labelStyle ??
              const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: Fonts.HEADING_FONT,
                color: Kolors.greyBlue,
              ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Kolors.redPrimaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Kolors.greyBlue,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Kolors.greyBlue,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Kolors.redPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
