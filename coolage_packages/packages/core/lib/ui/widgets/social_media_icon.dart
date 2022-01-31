part of core;

class SocialMediaIcon extends StatelessWidget {
  final String iconName;
  final Function onTap;
  const SocialMediaIcon({
    Key? key,
    required this.iconName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Kolors.primaryColor1,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Kolors.greyBlue.withOpacity(0.5),
            ),
          ],
        ),
        child: Center(
          child: IconImagesWid(
            iconName: iconName,
            color: Colors.white,
            height: 20,
            width: 20,
          ),
        ),
      ),
    );
  }
}
