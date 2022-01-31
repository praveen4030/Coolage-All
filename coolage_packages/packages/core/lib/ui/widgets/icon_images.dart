part of core;

class IconImagesWid extends StatelessWidget {
  final String? iconName;
  final Color color;
  final double height;
  final double width;
  const IconImagesWid({
    Key? key,
    @required this.iconName,
    this.color = Kolors.greyBlack,
    this.height = 25,
    this.width = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/icons/$iconName',
        height: height, width: width, color: color);
  }
}
