import 'package:core/core.dart';
import 'package:core/ui/widgets/buttons/cancel_button.dart';
import 'package:core/ui/widgets/buttons/save_button.dart';
import 'package:flutter/material.dart';

class AddProfileHeader extends StatelessWidget {
  final bool isEditingMode;
  final Function onSaveTap;
  final bool isSavingLoading;
  final String title;
  const AddProfileHeader({
    Key? key,
    this.isEditingMode = false,
    required this.onSaveTap,
    required this.title,
    required this.isSavingLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),
      color: Kolors.greyWhite,
      child: Row(
        children: [
          if (isEditingMode)
            const CancelButton()
          else
            Container(
              width: 36,
            ),
          const Spacer(),
          CustomText(
            text: title,
            fontSize: 16,
          ),
          const Spacer(),
          if (isEditingMode)
            SaveButton(
              onTap: () {
                onSaveTap();
              },
              isLoading: isSavingLoading,
            )
          else
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const IconImagesWid(
                iconName: 'cancel.png',
                height: 16,
                width: 16,
                color: Kolors.greyBlue,
              ),
            )
        ],
      ),
    );
  }
}
