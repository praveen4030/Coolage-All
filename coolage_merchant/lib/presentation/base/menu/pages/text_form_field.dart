import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final double? width;
  final double? height;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? textInputType;
  final int? maxLines;
  final Alignment? alignment;
  const TextFormFieldWidget({
    Key? key,
    @required this.controller,
    @required this.hint,
    @required this.validator,
    this.textInputType,
    this.inputFormatters,
    this.width,
    this.height = 50,
    this.maxLines,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? MediaQuery.of(context).size.width,
      alignment: alignment,
      padding: const EdgeInsets.only(
        right: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Kolors.greyWhite,
      ),
      child: TextFormField(
        maxLines: null,
        inputFormatters: inputFormatters ?? [],
        validator: (val) {
          return validator!(val);
        },
        keyboardType: textInputType,
        scrollPadding: EdgeInsets.zero,
        controller: controller,
        decoration: Styles.inputDecorationGreyBlue(context, hint!),
      ),
    );
  }
}
