import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/presentation/core/widgets/icon_with_background.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class CoolageIconWidget extends StatelessWidget {
  const CoolageIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithBackground(
      iconName: 'coolage_logo',
      iconSize: 42,
      onTap: () {
        AutoRouter.of(context).push(const ProfilePageRoute());
        // context.read<DrawerBloc>().add(const DrawerEvent.openCloseDrawer());
      },
    );
  }
}
