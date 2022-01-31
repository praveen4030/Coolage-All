import 'package:user/ui/profile/profile_header/edit_profile_header/social_media_dialog.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class EditProfileSocialLinksWidget extends StatefulWidget {
  final Map<String, TextEditingController> tecMap;

  const EditProfileSocialLinksWidget({
    Key? key,
    required this.tecMap,
  }) : super(key: key);

  @override
  State<EditProfileSocialLinksWidget> createState() =>
      _EditProfileSocialLinksWidgetState();
}

class _EditProfileSocialLinksWidgetState
    extends State<EditProfileSocialLinksWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const CardHeaderTextWidget(
            text: "Social Links",
          ),
          const SizedBox(
            height: 32,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: widget.tecMap.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final socialMedia = widget.tecMap.keys.toList()[index];
              final url = widget.tecMap[socialMedia]!.text;
              final icon = Functions.socialMediaIconsNameMap()[socialMedia];
              return Container(
                padding: const EdgeInsets.only(left: 12, bottom: 30),
                child: Row(
                  children: [
                    SocialMediaIcon(
                      iconName: "social_media/$icon.png",
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFieldBoxWidget(
                        controller: widget.tecMap[socialMedia],
                        hint: socialMedia,
                        onChanged: (val) {
                          // widget.socialMediaUrls!
                          //     .putIfAbsent(socialMedia, () => val as String);
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.tecMap.remove(socialMedia);
                        });
                      },
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Kolors.greyWhite,
                        ),
                        child: const Center(
                          child: IconImagesWid(
                            iconName: 'delete.png',
                            color: Kolors.greyBlue,
                            height: 18,
                            width: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          if (widget.tecMap.length < 4)
            GestureDetector(
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (context) {
                    return SocialMediaDialog(
                      selectedList: widget.tecMap.keys.toList(),
                      onItemTap: (String value, bool isSelected) {
                        if (isSelected) {
                          widget.tecMap.putIfAbsent(
                              value, () => TextEditingController());
                        } else {
                          widget.tecMap.remove(value);
                        }
                      },
                    );
                  },
                ).then((value) {
                  setState(() {});
                });
              },
              child: Container(
                height: 30,
                width: 90,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Kolors.greyBlue,
                ),
                child: Row(
                  children: const [
                    IconImagesWid(
                      iconName: 'add.png',
                      height: 18,
                      width: 18,
                      color: Kolors.white,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    CustomText(
                      text: "Add Link",
                      color: Kolors.white,
                      fontSize: 10,
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
