import 'package:coolage/presentation/auth/pages/phone_authentication_page.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class NoUserFoundPage extends StatelessWidget {
  final String phoneNo;
  const NoUserFoundPage({
    Key? key,
    required this.phoneNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 24),
                  child: const BackButtonWidget(),
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomText(
                  text: "No User found !",
                  fontSize: 30,
                ),
                const SizedBox(
                  height: 12,
                ),
                RichText(
                  text: TextSpan(
                    text:
                        "We are sorry ! looks like no user having mobile number ",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Kolors.greyBlue,
                      fontFamily: Fonts.CONTENT_FONT,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: Functions.getHiddenPhoneNo(phoneNo),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Kolors.greyBlue,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const TextSpan(
                        text: "  is associated with coolage. ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Kolors.greyBlue,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 72,
                ),
                Center(
                  child: BorderButton(
                    text: "Re-enter number",
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    borderRadius: 25,
                    color: Kolors.primaryColor1,
                    fontColor: Kolors.primaryColor1,
                    fontSize: 18,
                    width: 232,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: CustomText(
                    text: "- OR -",
                    color: Kolors.greyBlue.withOpacity(0.5),
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: ButtonWid(
                    text: "New Sign-up",
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>
                              const PhoneAuthenticationPage()));
                    },
                    borderRadius: 25,
                    fontSize: 18,
                    width: 232,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
