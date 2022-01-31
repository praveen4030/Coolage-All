part of core;

class ContinueButton extends StatelessWidget {
  final bool isEnabled;
  final Function onTap;
  final String text;
  final bool isLoading;
  final Color color;
  final bool isOnlyButton;
  const ContinueButton({
    Key? key,
    required this.isEnabled,
    required this.onTap,
    this.text = "CONTINUE",
    this.isLoading = false,
    this.isOnlyButton = false,
    this.color = Kolors.primaryColor1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return isOnlyButton
        ? button()
        : Container(
            height: isKeyboardOpen ? 70 : 90,
            padding: EdgeInsets.only(bottom: isKeyboardOpen ? 0 : 50),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: button(),
          );
  }

  Widget button() {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (!isLoading) {
            onTap();
          }
        },
        behavior: HitTestBehavior.translucent,
        child: Container(
          alignment: Alignment.center,
          height: 40,
          width: 172,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: isEnabled ? color : null,
            borderRadius: BorderRadius.circular(25),
            boxShadow: isEnabled
                ? [
                    BoxShadow(
                      blurRadius: 8,
                      color: Kolors.greyBlue.withOpacity(0.5),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Kolors.greyBlue.withOpacity(0.5),
                    ),
                    const BoxShadow(
                      blurRadius: 8,
                      color: Colors.white,
                    )
                  ],
          ),
          child: isLoading
              ? buttonCircularProgress()
              : Text(
                  text,
                  style: TextStyle(
                    color: !isEnabled
                        ? Kolors.greyLightBlue.withOpacity(0.5)
                        : Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    fontFamily: Fonts.HEADING_FONT,
                  ),
                ),
        ),
      ),
    );
  }

  Container buttonCircularProgress() {
    return Container(
      height: 24,
      width: 24,
      alignment: Alignment.center,
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
      ),
    );
  }
}
