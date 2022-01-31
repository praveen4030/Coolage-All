part of core;

class CheckboxWidget extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Function onChange;
  const CheckboxWidget({
    Key? key,
    required this.isSelected,
    required this.text,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            onChange();
          },
          child: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: !isSelected ? Kolors.greyBlue : Kolors.primaryColor1,
                width: 2,
              ),
            ),
            child: isSelected
                ? const Center(
                    child: IconImagesWid(
                      iconName: 'tick.png',
                      color: Kolors.primaryColor1,
                      height: 18,
                      width: 18,
                    ),
                  )
                : Container(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 8,
          ),
          child: CustomText(
            text: text,
            color: !isSelected ? Kolors.greyBlue : Kolors.primaryColor1,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: Fonts.HEADING_FONT,
          ),
        ),
      ],
    );
  }
}
