import 'package:coolage_admin/presentation/auth/login.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/ui/profile/pages/help_page.dart';
import 'package:user/ui/profile/user_profile.dart';
import 'package:user/user.dart';

class CustomDrawerPage extends StatelessWidget {
  const CustomDrawerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return Align(
          alignment: const Alignment(-1, -0.8),
          child: Material(
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
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
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
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
                      Container(
                        decoration: BoxDecoration(
                          color: Kolors.skyBlueColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              color: Kolors.greyBlue.withOpacity(0.5),
                            ),
                          ],
                        ),
                        child: UserProfileCircular(
                          image: state.coolUser?.imageUrl ?? '',
                          size: 71,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (state.coolUser != null)
                              CustomText(
                                text: state.coolUser!.name ?? '',
                                fontSize: 18,
                              ),
                            if (state.coolUser != null)
                              CustomText(
                                text: state.coolUser!.phoneNo ?? '',
                                fontFamily: Fonts.CONTENT_FONT,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Kolors.greyBlue,
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const DrawerTilesGroup(),
                  const Spacer(),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/coolage.png',
                        width: 94,
                        height: 36,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        Constants.APP_VERSION,
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
          ),
        );
      },
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
          // DrawerTile(
          //     icon: 'college',
          //     onTap: () {
          //       context
          //           .read<DrawerBloc>()
          //           .add(const DrawerEvent.openCloseDrawer());
          //       AutoRouter.of(context).push(const AboutPageRoute());
          //     },
          //     text: 'IIT Roorkee'),

          // DrawerTile(
          //     icon: 'profile',
          //     onTap: () {
          //       Navigator.of(context).pop();
          //       Navigator.of(context).push(MaterialPageRoute(
          //           builder: (context) => UserProfilePage(
          //               coolUser: Getters.getCurrentUser(context))));
          //     },
          //     text: 'Profile'),
          // DrawerTile(
          //     icon: 'settings',
          //     onTap: () {
          //       AutoRouter.of(context).pop();
          //       AutoRouter.of(context).push(const ProfilePageRoute());
          //     },
          //     text: 'App Settings'),
          DrawerTile(
              icon: 'logout',
              onTap: () {
                context
                    .read<AuthenticationBloc>()
                    .add(const AuthenticationEvent.signedOut());
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              text: 'Logout'),
        ],
      ),
    );
  }
}
