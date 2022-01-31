part of canteen;

class BottomButtonWidget extends StatelessWidget {
  final String? text;
  final Function? onTap;
  final Color? color;
  const BottomButtonWidget(
      {Key? key,
      @required this.onTap,
      @required this.text,
      this.color = Kolors.secondaryColor2,
      s})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 75,
        alignment: Alignment.center,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: text,
              fontSize: 24,
              color: Colors.white,
            ),
            const SizedBox(
              width: 18,
            ),
            Image.asset(
              'assets/icons/right_arrow.png',
              width: 26,
              height: 10,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
