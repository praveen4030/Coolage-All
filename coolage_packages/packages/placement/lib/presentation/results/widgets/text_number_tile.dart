import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/presentation/results/widgets/number_count_widget.dart';

class TextNumberTile extends StatelessWidget {
  final String text;
  final int count;
  const TextNumberTile({
    Key? key,
    required this.count,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Kolors.greyWhite,
      child: Row(
        children: [
          Expanded(
            child: CustomText(
              text: text,
              fontSize: 16,
              color: Kolors.greyBlue,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          NumberCountWidget(
            count: count,
          )
        ],
      ),
    );
  }
}
