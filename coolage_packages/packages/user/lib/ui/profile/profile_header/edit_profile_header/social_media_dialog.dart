import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SocialMediaDialog extends StatefulWidget {
  final List<String> selectedList;
  final Function? onItemTap;

  const SocialMediaDialog({
    Key? key,
    required this.selectedList,
    this.onItemTap,
  }) : super(key: key);

  @override
  _SocialMediaDialogState createState() => _SocialMediaDialogState();
}

class _SocialMediaDialogState extends State<SocialMediaDialog> {
  List<String>? list;
  @override
  void initState() {
    super.initState();
    list = widget.selectedList;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop(list);
        return true;
      },
      child: Dialog(
        child: SizedBox(
          height: 400,
          child: Column(
            children: [
              Container(
                height: 56,
                color: Kolors.greyWhite,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Expanded(
                      child: CustomText(
                        text: "Add Social Links",
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const IconImagesWid(
                        iconName: 'cancel.png',
                        height: 24,
                        width: 24,
                        color: Kolors.greyBlue,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: RawScrollbar(
                  isAlwaysShown: true,
                  thumbColor: Kolors.greyBlue,
                  radius: const Radius.circular(5),
                  thickness: 5,
                  mainAxisMargin: 8,
                  crossAxisMargin: 8,
                  child: ListView.builder(
                    itemCount: Functions.socialMediaIconsNameMap().length,
                    itemBuilder: (context, index) {
                      return socialMediaTile(index);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialMediaTile(int index) {
    final iconsMap = Functions.socialMediaIconsNameMap();
    final key = iconsMap.keys.toList()[index];
    final value = iconsMap.values.toList()[index];
    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          IconImagesWid(
            iconName: 'social_media/$value.png',
            height: 28,
            width: 28,
            color: list!.contains(key) ? Kolors.primaryColor1 : Kolors.greyBlue,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: SelectedTile(
                text: key,
                isSelected: list!.contains(key),
                onTap: () {
                  if (!list!.contains(key)) {
                    if (list!.length >= 4) {
                      Fluttertoast.showToast(
                          msg: "Can't select more than four social media!");
                      return;
                    }
                    setState(() {
                      list!.add(key);
                      if (widget.onItemTap != null) {
                        widget.onItemTap!(key, true);
                      }
                    });
                  } else {
                    setState(() {
                      list!.remove(key);
                      if (widget.onItemTap != null) {
                        widget.onItemTap!(key, false);
                      }
                    });
                  }
                }),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
