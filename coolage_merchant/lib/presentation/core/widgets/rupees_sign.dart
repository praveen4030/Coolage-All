import 'package:flutter/material.dart';

class RupeesSign extends StatelessWidget {
  final double? size;
  final Color? color;
  const RupeesSign({
    Key? key,
    @required this.size,
    this.color = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/icons/rupees.png',
        height: size,
        width: size,
        color: color,
      ),
    );
  }
}
