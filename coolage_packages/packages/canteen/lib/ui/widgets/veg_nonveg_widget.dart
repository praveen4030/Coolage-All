part of canteen;

class VegNonvegWidget extends StatelessWidget {
  final bool? isVeg;
  const VegNonvegWidget({
    Key? key,
    @required this.isVeg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = isVeg! ? Kolors.greenColor : Kolors.redSecondaryColor;
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.center,
      child: Container(
        height: 6,
        width: 6,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
