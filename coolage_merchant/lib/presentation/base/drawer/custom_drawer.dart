import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/application/home/drawer/drawer_bloc.dart';
import 'package:coolage_merchant/presentation/base/drawer/widgets/drawer_tile.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDrawerPage extends StatelessWidget {
  const CustomDrawerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      bottom: 20,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 320,
          maxHeight: 600,
        ),
        decoration: const BoxDecoration(
          color: Kolors.greyWhite,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<DrawerBloc>()
                        .add(const DrawerEvent.openCloseDrawer());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image.asset(
                      'assets/icons/cancel.png',
                      height: 14,
                      width: 14,
                      color: Kolors.greyBlue,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/icons/avatar.png',
                  height: 71,
                  width: 71,
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: const [
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontFamily: Fonts.HEADING_FONT,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Kolors.greyBlack,
                      ),
                    ),
                    Text(
                      'john.do@iir.ac.in',
                      style: TextStyle(
                        fontFamily: Fonts.CONTENT_FONT,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Kolors.greyBlue,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const DrawerTilesGroup(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/website.png',
                  height: 24,
                  width: 24,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'coolage.app',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: Fonts.HEADING_FONT,
                    color: Kolors.greyBlack,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerTilesGroup extends StatelessWidget {
  const DrawerTilesGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 20,
        top: 25,
      ),
      child: Column(
        children: [
          DrawerTile(
              icon: 'college',
              onTap: () {
                // context
                //     .read<DrawerBloc>()
                //     .add(const DrawerEvent.openCloseDrawer());
                // AutoRouter.of(context).push(const AboutPageRoute());
              },
              text: 'IIT Roorkee'),
          DrawerTile(
              icon: 'profile',
              onTap: () {
                // context
                //     .read<DrawerBloc>()
                //     .add(const DrawerEvent.openCloseDrawer());
                // AutoRouter.of(context).push(const ProfilePageRoute());
              },
              text: 'Profile Settings'),
          DrawerTile(
              icon: 'settings',
              onTap: () {
                // context
                //     .read<DrawerBloc>()
                //     .add(const DrawerEvent.openCloseDrawer());
                // AutoRouter.of(context).push(const ProfilePageRoute());
              },
              text: 'App Settings'),
          DrawerTile(
              icon: 'help',
              onTap: () {
                // context
                //     .read<DrawerBloc>()
                //     .add(const DrawerEvent.openCloseDrawer());
                // AutoRouter.of(context).push(const ProfilePageRoute());
              },
              text: 'Help'),
          DrawerTile(icon: 'logout', onTap: () {}, text: 'Logout'),
        ],
      ),
    );
  }
}
