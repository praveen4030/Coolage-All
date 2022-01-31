import 'package:coolage_admin/presentation/base/home/custom_drawer.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

enum BaseAppBarAction {
  home,
  canteen,
  store,
  messages,
}

class BaseAppBar extends StatelessWidget {
  final String? text;
  final BaseAppBarAction? baseAppBarAction;
  final Color textColor;
  const BaseAppBar({
    Key? key,
    @required this.text,
    @required this.baseAppBarAction,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconWithBackground(
          iconSize: 70,
          iconName: 'coolage_logo',
          opacity: baseAppBarAction == BaseAppBarAction.home ? 0.25 : 1,
          onTap: () async {
            await showDialog(
                context: context,
                builder: (context) {
                  return const CustomDrawerPage();
                });
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
    if (baseAppBarAction == BaseAppBarAction.home) {
      return Container();
      // return IconWithBackground(
      //   iconName: 'notification',
      //   iconSize: 20,
      //   opacity: 0.25,
      //   onTap: () {
      //     AutoRouter.of(context).push(const NotificationsPageRoute());
      //   },
      // );
    } else if (baseAppBarAction == BaseAppBarAction.canteen) {
      return Container();
    } else if (baseAppBarAction == BaseAppBarAction.store) {
      return IconWithBackground(
        iconName: 'cart',
        iconSize: 20,
        onTap: () {
          // AutoRouter.of(context).push(const StoreCartPageRoute());
        },
      );
    } else {
      return IconWithBackground(
        iconName: 'notification',
        iconSize: 20,
        onTap: () {},
      );
    }
  }
}
