import 'package:core/core.dart';
import 'package:flutter/material.dart';

class BranchResultDetailsPage extends StatelessWidget {
  const BranchResultDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: CoolageAppBar(
            isCenter: true,
            backgroundColor: Kolors.greyWhite,
            actions: [],
            text: 'APPLY',
          ),
        ),
      ),
    );
  }
}
