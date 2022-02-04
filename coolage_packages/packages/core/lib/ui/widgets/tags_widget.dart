part of core;

class SelectTagsWidget extends StatefulWidget {
  final List<String>? tagsList;
  final Function onChange;
  final String hint;
  const SelectTagsWidget({
    Key? key,
    @required this.tagsList,
    required this.onChange,
    required this.hint,
  }) : super(key: key);

  @override
  State<SelectTagsWidget> createState() => _SelectTagsWidgetState();
}

class _SelectTagsWidgetState extends State<SelectTagsWidget> {
  List<String>? list;
  @override
  void initState() {
    super.initState();
    list = widget.tagsList;
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
            CustomText(
              text: widget.hint,
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
                    ? CustomText(
                        text: widget.hint,
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
