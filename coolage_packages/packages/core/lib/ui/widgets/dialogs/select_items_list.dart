part of core;

class SelectItemsListDialog extends StatefulWidget {
  final List<String> selectedList;
  final List<String> itemsList;
  final Function? onItemTap;
  final double? height;
  const SelectItemsListDialog({
    Key? key,
    required this.itemsList,
    required this.selectedList,
    this.height,
    this.onItemTap,
  }) : super(key: key);

  @override
  _SelectItemsListDialogState createState() => _SelectItemsListDialogState();
}

class _SelectItemsListDialogState extends State<SelectItemsListDialog> {
  List<String>? list;
  @override
  void initState() {
    super.initState();
    list = widget.selectedList;
  }

  Widget tagSelectedTile(String tag) {
    return SelectedTile(
        text: tag,
        isSelected: list!.contains(tag),
        onTap: () {
          if (!list!.contains(tag)) {
            setState(() {
              list!.add(tag);
              if (widget.onItemTap != null) {
                widget.onItemTap!(tag, true);
              }
            });
          } else {
            setState(() {
              list!.remove(tag);
              if (widget.onItemTap != null) {
                widget.onItemTap!(tag, false);
              }
            });
          }
        });
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
          height: widget.height ?? 400,
          child: RawScrollbar(
            isAlwaysShown: true,
            thumbColor: Kolors.greyBlue,
            radius: const Radius.circular(5),
            thickness: 5,
            mainAxisMargin: 8,
            crossAxisMargin: 8,
            child: ListView.builder(
              itemCount: widget.itemsList.length,
              itemBuilder: (context, index) {
                return tagSelectedTile(widget.itemsList[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
