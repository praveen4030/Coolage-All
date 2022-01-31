import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';

class Styles {
  static InputDecoration inputDecoration(BuildContext context, String hintText,
      {bool isUnderline = false}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Kolors.greyBlack,
        fontSize: 16,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Kolors.secondaryColor1,
          width: 0.8,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          color: Kolors.greyLight,
          width: 0.8,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.red[300]!),
      ),
    );
  }

  static InputDecoration loginFieldInputDecoration(
    BuildContext context,
  ) {
    return InputDecoration(
      hintText: "Mobile Number",
      border: InputBorder.none,
    );
  }

  static InputDecoration inputDecorationGreyBlue(
      BuildContext context, String hintText,
      {bool isUnderline = false}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
      ),
      hintText: hintText,
      hintStyle: const TextStyle(
        fontFamily: Fonts.CONTENT_FONT,
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: Kolors.greyBlue,
      ),
      border: InputBorder.none,
    );
  }
}
