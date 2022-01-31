import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:flutter/material.dart';

class DropDownButton extends StatelessWidget {
  final String? value;
  final List<String>? list;
  final Function? onChanged;
  final String? hint;
  final double? width;
  const DropDownButton({
    Key? key,
    @required this.list,
    @required this.onChanged,
    @required this.value,
    @required this.hint,
    @required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Kolors.greyLight,
          width: 0.8,
        ),
      ),
      width: width,
      padding: const EdgeInsets.all(6),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: Text(
            hint!,
            style: const TextStyle(
              fontFamily: Fonts.CONTENT_FONT,
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Kolors.greyBlue,
            ),
          ),
          style: const TextStyle(
            fontSize: 16,
            color: Kolors.fontColor,
            fontFamily: Fonts.POPPINS,
          ),
          items: list?.map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: Kolors.fontColor,
                      fontSize: 12,
                      fontFamily: Fonts.POPPINS,
                      fontWeight: FontWeight.w600,
                    ),
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
