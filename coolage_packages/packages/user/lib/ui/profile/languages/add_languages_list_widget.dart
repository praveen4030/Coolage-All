import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AddLanguagesListWidget extends StatefulWidget {
  final List<String> languagesList;
  const AddLanguagesListWidget({
    Key? key,
    required this.languagesList,
  }) : super(key: key);

  @override
  _AddLanguagesListWidgetState createState() => _AddLanguagesListWidgetState();
}

class _AddLanguagesListWidgetState extends State<AddLanguagesListWidget> {
  List<String>? list;
  @override
  void initState() {
    super.initState();
    list = widget.languagesList;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showTagsDialog();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (list!.isNotEmpty)
            const CustomText(
              text: "Languages",
              fontSize: 12,
              color: Kolors.greyBlue,
            ),
          if (list!.isNotEmpty)
            const SizedBox(
              height: 8,
            ),
          Row(
            children: [
              Expanded(
                child: list!.isEmpty
                    ? const CustomText(
                        text: "Languages",
                        color: Kolors.greyBlue,
                        fontSize: 18,
                      )
                    : tags(),
              ),
              const IconImagesWid(
                iconName: 'add.png',
                height: 18,
                width: 18,
                color: Kolors.greyBlue,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Kolors.greyBlue,
          ),
        ],
      ),
    );
  }

  Widget tags() {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: <Widget>[...generateTags()],
    );
  }

  List<Widget> generateTags() {
    return list!
        .map(
          (tag) => Tag(
            tag: tag,
            isSelected: true,
            onTap: () {
              setState(() {
                list!.remove(tag);
              });
            },
          ),
        )
        .toList();
  }

  Future<void> showTagsDialog() async {
    await showDialog(
      context: context,
      builder: (context) {
        return SelectItemsListDialog(
          selectedList: list!,
          itemsList: const [
            "Career",
            "Research",
            "Travel",
            "Campus",
            "Memoirs",
            "Opinion",
            "Technology",
            "News",
            "Lifestyle",
            "Health",
          ],
        );
      },
    ).then((value) {
      setState(() {});
    });
  }
}
