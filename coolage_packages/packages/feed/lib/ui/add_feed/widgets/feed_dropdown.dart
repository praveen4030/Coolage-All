import 'package:core/core.dart';
import 'package:flutter/material.dart';

class FeedDropdownWidget extends StatelessWidget {
  final List<String> itemsList;
  final String selectedValue;
  final Function? onChanged;
  const FeedDropdownWidget({
    Key? key,
    required this.itemsList,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Kolors.greyBlue.withOpacity(0.5),
            blurRadius: 4,
          ),
        ],
      ),
      child: DropdownButton<String>(
        value: itemsList.contains(selectedValue) ? selectedValue : null,
        icon: const IconImagesWid(
          iconName: 'down_arrow.png',
          width: 12,
          height: 10,
          color: Kolors.primaryColor1,
        ),
        underline: Container(),
        selectedItemBuilder: (context) {
          return itemsList.map<Widget>((String item) {
            return Container(
              padding: const EdgeInsets.only(right: 20),
              child: Center(
                child: CustomText(
                  text: item,
                  fontSize: 16,
                  color: Kolors.primaryColor1,
                  fontFamily: Fonts.HEADING_FONT,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          }).toList();
        },
        items: itemsList.map((item) {
          return DropdownMenuItem<String>(
            value: item,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomText(
                        text: item,
                        fontSize: 18,
                        color: Kolors.greyBlack,
                        fontFamily: Fonts.HEADING_FONT,
                        fontWeight: FontWeight.w500,
                      ),
                      const Spacer(),
                      if (item == selectedValue)
                        const IconImagesWid(
                          iconName: 'tick.png',
                          height: 20,
                          width: 20,
                          color: Kolors.primaryColor1,
                        )
                    ],
                  ),
                  const SizedBox(height: 4),
                  if (item == selectedValue)
                    const Divider(
                      color: Kolors.primaryColor1,
                      height: 2,
                      thickness: 2,
                    ),
                ],
              ),
            ),
          );
        }).toList(),
        onChanged: (val) {
          onChanged!(val);
        },
        // ),
      ),
    );
  }
}
