import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SelectGroupsDialog extends StatefulWidget {
  final String? title;
  final Function? onDone;
  final List<String>? list;
  final List<String>? selectedItemsList;
  const SelectGroupsDialog({
    Key? key,
    @required this.selectedItemsList,
    @required this.title,
    @required this.onDone,
    @required this.list,
  }) : super(key: key);

  @override
  State<SelectGroupsDialog> createState() => _SelectGroupsDialogState();
}

class _SelectGroupsDialogState extends State<SelectGroupsDialog> {
  List<String>? selectedList;
  @override
  void initState() {
    super.initState();
    selectedList = widget.selectedItemsList;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Kolors.greyWhite,
              padding: const EdgeInsets.all(10),
              child: CustomText(
                text: widget.title,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: Fonts.HEADING_FONT,
                color: Kolors.greyBlack,
              ),
            ),
            Container(
              height: 360,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: ListView.builder(
                itemCount: widget.list!.length,
                itemBuilder: (context, index) {
                  final item = widget.list![index];
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: RadioTileWidget(
                      text: item,
                      onChange: () {
                        setState(() {
                          if (!selectedList!.contains(item)) {
                            selectedList!.add(item);
                          } else {
                            selectedList!.remove(item);
                          }
                        });
                      },
                      value: selectedList!.contains(item) ? index : null,
                      grpNo: index,
                    ),
                  );
                },
              ),
            ),
            Container(
              color: Kolors.greyWhite,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: PrimaryBorderButton(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      text: "Cancel",
                      color: Kolors.redPrimaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    flex: 1,
                    child: PrimaryButton(
                      onTap: () {
                        widget.onDone!(selectedList);
                      },
                      text: "DONE",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
