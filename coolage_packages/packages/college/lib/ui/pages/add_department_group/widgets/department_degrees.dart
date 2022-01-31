import 'package:core/core.dart';
import 'package:flutter/material.dart';

class DepartmentDegreesSelectPage extends StatefulWidget {
  final List<String>? departmentDegreesList;
  final Function onChange;
  const DepartmentDegreesSelectPage({
    Key? key,
    @required this.departmentDegreesList,
    required this.onChange,
  }) : super(key: key);

  @override
  State<DepartmentDegreesSelectPage> createState() =>
      _DepartmentDegreesSelectPageState();
}

class _DepartmentDegreesSelectPageState
    extends State<DepartmentDegreesSelectPage> {
  List<String>? list;
  @override
  void initState() {
    super.initState();
    list = widget.departmentDegreesList;
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
              text: "Tags",
              fontSize: 12,
              color: Kolors.greyBlue,
              fontFamily: Fonts.HEADING_FONT,
              fontWeight: FontWeight.w500,
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
                        text: "Tags",
                        color: Kolors.greyBlue,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: Fonts.HEADING_FONT,
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
                widget.onChange();
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
            height: 300,
            selectedList: list!,
            itemsList: Functions.getUserCollegeDegrees(context));
      },
    ).then((value) {
      setState(() {});
      widget.onChange();
    });
  }
}
