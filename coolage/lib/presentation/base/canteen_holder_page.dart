import 'package:canteen/canteen.dart';
import 'package:coolage/presentation/core/widgets/base_app_bar.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CanteenHolderPage extends StatelessWidget {
  const CanteenHolderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: BaseAppBar(
                textColor: Colors.black,
                text: 'CANTEEN',
                baseAppBarAction: BaseAppBarAction.canteen,
              ),
            ),
          ),
          backgroundColor: Kolors.greyWhite,
          body: CanteenPage()),
    );
  }
}
