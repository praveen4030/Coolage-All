import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/application/home/drawer/drawer_bloc.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/icon_with_background.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseAppBar extends StatelessWidget {
  final String? text;
  final Color textColor;
  const BaseAppBar({
    Key? key,
    @required this.text,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconWithBackground(
          iconName: 'coolage_logo',
          onTap: () {
            context.read<DrawerBloc>().add(const DrawerEvent.openCloseDrawer());
          },
        ),
        Expanded(
          child: Center(
            child: Text(
              text!,
              style: TextStyle(
                color: textColor,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                fontFamily: Fonts.HEADING_FONT,
              ),
            ),
          ),
        ),
        actionButton(context),
      ],
    );
  }

  Widget actionButton(BuildContext context) {
    return IconWithBackground(
      iconName: 'search',
      iconSize: 20,
      onTap: () {
        AutoRouter.of(context).push(const NotificationsPageRoute());
      },
    );
  }
}
