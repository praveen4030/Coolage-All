import 'package:core/core.dart';
import 'package:flutter/material.dart';

class StoreCategoryTile extends StatelessWidget {
  const StoreCategoryTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Kolors.greyBlue.withOpacity(0.25),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/icons/stores/stationary.png',
                  height: 25,
                  width: 25,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
