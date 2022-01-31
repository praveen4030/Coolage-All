part of core;

class RupeesSign extends StatelessWidget {
  final double? size;
  const RupeesSign({
    Key? key,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/icons/rupees.png',
        height: size,
        width: size,
        color: Kolors.greyBlue,
      ),
    );
  }
}
