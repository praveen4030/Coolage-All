import 'package:core/core.dart';

import 'package:flutter/material.dart';

class UpdateAvailablePage extends StatelessWidget {
  final String? appVersion;
  const UpdateAvailablePage({
    Key? key,
    @required this.appVersion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.greyWhite,
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            'assets/images/coolage.png',
            height: 72,
          ),
          const SizedBox(
            height: 5,
          ),
          CustomText(
            text: appVersion,
            color: Kolors.greyBlue,
            fontSize: 18,
          ),
          const Spacer(),
          oops(context),
          const Spacer(),
          updateButton(),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }

  Widget updateButton() {
    return GestureDetector(
      onTap: () {
        Functions.launchURL(
            'https://play.google.com/store/apps/details?id=com.kraigs.coolage');
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 230,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff4E52DF),
              Color(0xff161AA7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          color: const Color(0xff161AA7),
          borderRadius: BorderRadius.circular(80),
        ),
        child: const CustomText(
          text: "UPDATE",
          fontSize: 22,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget oops(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Kolors.greyBlue.withOpacity(0.5),
          )
        ],
      ),
      child: Column(
        children: const [
          CustomText(
            text: 'Opps',
            color: Kolors.secondaryColor2,
            fontSize: 36,
          ),
          SizedBox(
            height: 30,
          ),
          CustomText(
            text:
                'It seems like you are using an old \nverion of coolage which is unsupported',
            fontSize: 14,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          CustomText(
            text: 'Download the lastest version',
            color: Kolors.secondaryColor2,
            fontSize: 18,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
