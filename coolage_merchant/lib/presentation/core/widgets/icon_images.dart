import 'package:flutter/material.dart';

class IconImagesWid extends StatelessWidget {
  final String? iconName;
  const IconImagesWid({
    Key? key,
    @required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/icons/$iconName',
        height: 25, width: 25, color: Theme.of(context).iconTheme.color);
  }
}
