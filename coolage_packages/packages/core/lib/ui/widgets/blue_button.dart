part of core;

class BlueButtonWidget extends StatelessWidget {
  final Function? onTap;
  final String? text;
  final double? width;
  final double? height;
  final bool? isLoading;
  const BlueButtonWidget({
    Key? key,
    @required this.onTap,
    @required this.text,
    this.width = 230,
    this.height = 50,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width!,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: Kolors.primaryColor1,
          borderRadius: BorderRadius.circular(80),
        ),
        child: isLoading!
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : CustomText(
                text: text!,
                fontSize: 22,
                color: Colors.white,
              ),
      ),
    );
  }
}
