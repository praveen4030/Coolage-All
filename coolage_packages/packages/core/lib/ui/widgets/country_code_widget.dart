// part of core;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/core.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryCodeWidget extends StatelessWidget {
  final Function onChanged;
  const CountryCodeWidget({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      onChanged: (c) {
        onChanged(c);
      },
      initialSelection: 'IN',
      hideSearch: true,
      showCountryOnly: true,
      showOnlyCountryWhenClosed: true,
      showDropDownButton: true,
      favorite: ['+91', 'IN'],
      builder: (CountryCode? code) {
        return Container(
          height: 50,
          padding: const EdgeInsets.only(
            left: 12,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                color: Kolors.greyBlue,
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage(
                  code!.flagUri!,
                  package: 'country_code_picker',
                ),
              ),
              const SizedBox(width: 10),
              CustomText(
                text: code.dialCode!.substring(1),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: Kolors.greyBlue,
                size: 20,
              )
            ],
          ),
        );
      },
    );
  }
}
