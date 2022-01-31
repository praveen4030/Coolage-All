import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AddSkillsListWidget extends StatefulWidget {
  final List<String> skillsList;
  const AddSkillsListWidget({
    Key? key,
    required this.skillsList,
  }) : super(key: key);

  @override
  _AddSkillsListWidgetState createState() => _AddSkillsListWidgetState();
}

class _AddSkillsListWidgetState extends State<AddSkillsListWidget> {
  List<String>? list;
  @override
  void initState() {
    super.initState();
    list = widget.skillsList;
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
              text: "Skills",
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
                        text: "Skills",
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
