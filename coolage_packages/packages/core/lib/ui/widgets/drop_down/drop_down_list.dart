part of core;

///new updated one drop down
class DropDownList extends StatelessWidget {
  final String? value;
  final List<String>? list;
  final Function? onChanged;
  final String? hint;
  final double? fontSize;
  final bool? isBorder;
  final Widget? hintWidget;
  final Function? onHintTap;
  const DropDownList({
    Key? key,
    @required this.list,
    @required this.onChanged,
    @required this.value,
    this.hint,
    this.isBorder = false,
    this.fontSize = 20,
    this.hintWidget,
    this.onHintTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              scrollbarAlwaysShow: true,
              dropdownMaxHeight: 300,
              value: list!.contains(value) ? value : null,
              hint: InkWell(
                onTap: () {
                  if (onHintTap != null) {
                    onHintTap!();
                  }
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 12),
                  child: hintWidget ??
                      CustomText(
                        text: hint!,
                        color: Kolors.greyBlue,
                        fontSize: 18,
                        fontFamily: Fonts.HEADING_FONT,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              style: const TextStyle(
                fontSize: 18,
                color: Kolors.greyBlack,
                fontFamily: Fonts.HEADING_FONT,
                fontWeight: FontWeight.w500,
              ),
              icon: Container(
                padding: const EdgeInsets.only(bottom: 0),
                child: const IconImagesWid(
                  iconName: 'down_arrow.png',
                  width: 22,
                  height: 22,
                  color: Kolors.greyBlue,
                ),
              ),
              underline: Container(),
              selectedItemBuilder: (context) {
                return list!.map<Widget>((String item) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: hint,
                        fontSize: 12,
                        color: Kolors.greyBlue,
                        fontFamily: Fonts.HEADING_FONT,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(height: 2),
                      CustomText(
                        text: item,
                        fontSize: 18,
                        color: Kolors.greyBlack,
                        fontFamily: Fonts.HEADING_FONT,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  );
                }).toList();
              },
              isExpanded: true,
              items: list?.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: CustomText(
                                    text: item,
                                    fontSize: 18,
                                    overflow: TextOverflow.ellipsis,
                                    color: Kolors.greyBlack,
                                    fontFamily: Fonts.HEADING_FONT,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                if (item == value)
                                  const IconImagesWid(
                                    iconName: 'tick.png',
                                    height: 20,
                                    width: 20,
                                    color: Kolors.primaryColor1,
                                  )
                              ],
                            ),
                            const SizedBox(height: 8),
                            if (item == value)
                              const Divider(
                                color: Kolors.primaryColor1,
                                height: 2,
                                thickness: 2,
                              ),
                          ],
                        ),
                      ),
                    );
                  }).toList() ??
                  [],
              onChanged: (val) {
                onChanged!(val);
              },
              // ),
            ),
          ),
          const Divider(
            color: Kolors.greyBlue,
            height: 1,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
