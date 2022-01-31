import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditUserDetailTile extends StatelessWidget {
  final bool isVisible;
  final Widget child;
  final bool isEditable;
  final Function onDeleteTap;
  final Function onEyeTap;
  final Function onEditTap;
  final bool isDeleteLoading;
  const EditUserDetailTile({
    Key? key,
    required this.child,
    required this.isVisible,
    required this.onDeleteTap,
    required this.onEditTap,
    required this.onEyeTap,
    required this.isDeleteLoading,
    this.isEditable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 4,
        left: 4,
        right: 4,
        top: 8,
      ),
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: Kolors.greyBlue.withOpacity(0.5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const IconImagesWid(
                iconName: 'three_dots.png',
                height: 12,
                width: 12,
                color: Kolors.greyBlue,
              ),
              const Spacer(),
              if (isEditable) editButton(),
              if (isEditable)
                const SizedBox(
                  width: 20,
                ),
              eyeButton(),
              const SizedBox(
                width: 20,
              ),
              deleteButton(),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Kolors.greyWhite,
              borderRadius: BorderRadius.circular(8),
            ),
            child: child,
          ),
        ],
      ),
    );
  }

  Widget editButton() {
    return GestureDetector(
      onTap: () {
        onEditTap();
      },
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Kolors.primaryColor1,
          ),
          color: Kolors.greyWhite,
        ),
        child: const Center(
          child: IconImagesWid(
            iconName: 'edit.png',
            height: 18,
            width: 18,
            color: Kolors.primaryColor1,
          ),
        ),
      ),
    );
  }

  Widget eyeButton() {
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(msg: "Updating visibility status");
        onEyeTap();
      },
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isVisible ? Kolors.primaryColor1 : Kolors.redPrimaryColor,
          ),
          color: Kolors.greyWhite,
        ),
        child: isVisible
            ? const Center(
                child: IconImagesWid(
                  iconName: 'visible.png',
                  height: 18,
                  width: 18,
                  color: Kolors.primaryColor1,
                ),
              )
            : const Center(
                child: IconImagesWid(
                  iconName: 'invisible.png',
                  height: 18,
                  width: 18,
                  color: Kolors.redPrimaryColor,
                ),
              ),
      ),
    );
  }

  Widget deleteButton() {
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(msg: "Delete in progress...");
        onDeleteTap();
      },
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Kolors.redPrimaryColor,
          ),
          color: Kolors.greyWhite,
        ),
        child:
            // isDeleteLoading
            //     ? Container(
            //         padding: const EdgeInsets.all(6),
            //         height: 24,
            //         width: 24,
            //         alignment: Alignment.center,
            //         child: const CircularProgressIndicator(
            //           color: Kolors.redPrimaryColor,
            //         ))
            //     :
            const Center(
          child: IconImagesWid(
            iconName: 'delete.png',
            height: 18,
            width: 18,
            color: Kolors.redPrimaryColor,
          ),
        ),
      ),
    );
  }
}
