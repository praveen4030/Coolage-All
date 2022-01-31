import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoolageDetailsBloc, CoolageDetailsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Kolors.greyWhite,
          body: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    child: Image.asset(
                      'assets/images/onboardingcircle.png',
                      height: 170,
                    ),
                  ),
                  Image.asset(
                    'assets/icons/help_support.png',
                    height: 72,
                    width: 72,
                  ),
                ],
              ),
              Container(
                // padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    helpTile('whatsapp', "Coolage Customer Care", () {
                      Functions.launchURL(
                          'https://wa.me/${state.coolageDetailsModel!.coolageHelpContact}');
                    }),
                    helpTile('website', "Coolage Email Support", () {
                      Functions.launchURL(
                          'mailto:${state.coolageDetailsModel!.coolageEmailContact}');
                    }),
                    helpTile('email', "Coolage Official Website", () {
                      Functions.launchURL('https://coolage.co.in');
                    }),
                  ],
                ),
              )
            ],
          ),
          bottomSheet: Container(
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWid(
                  width: 160,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  text: "DONE",
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget helpTile(String icon, String text, Function onTap) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        margin: const EdgeInsets.symmetric(vertical: 20),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 4,
          //     color: Kolors.greyBlue.withOpacity(0.5),
          //   )
          // ],
        ),
        child: Row(children: [
          Image.asset(
            'assets/icons/$icon.png',
            height: 32,
            width: 32,
          ),
          const SizedBox(width: 26),
          CustomText(
            text: text,
            fontSize: 14,
          )
        ]),
      ),
    );
  }
}
