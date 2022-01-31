import 'package:coolage/presentation/auth/intro/onboarding.dart';
import 'package:coolage/presentation/auth/pages/phone_authentication_page.dart';
import 'package:coolage/presentation/auth/pages/sign_in/signin_page.dart';
import 'package:coolage/presentation/auth/widgets/google_login.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Kolors.greyWhite,
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.only(
                  bottom: 360,
                ),
                child: const OnboardingWidget(),
              ),
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 12,
                      color: Kolors.greyBlue.withOpacity(0.5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 36,
                    ),
                    GoogleLoginWidget(),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     loginIcon(() {
                    //       signInWithGoogle(context);
                    //     }, "google_logo"),
                    //     const SizedBox(
                    //       width: 52,
                    //     ),
                    //     loginIcon(() {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (BuildContext context) =>
                    //               LinkedInLoginPage(),
                    //           fullscreenDialog: true,
                    //         ),
                    //       );
                    //     }, "linkedin_logo"),
                    //   ],
                    // ),
                    const SizedBox(
                      height: 36,
                    ),
                    ButtonWid(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PhoneAuthenticationPage(),
                          ),
                        );
                      },
                      text: "Sign up",
                      height: 60,
                      width: 232,
                      fontSize: 22,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: 232,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            text: "Already a member?",
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: Fonts.CONTENT_FONT,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          BorderButton(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const SignInPage(),
                                ),
                              );
                            },
                            text: "Log in",
                            color: Kolors.primaryColor1,
                            width: 232,
                            height: 60,
                            fontColor: Kolors.primaryColor1,
                            fontSize: 22,
                            borderRadius: 8,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginIcon(Function onTap, String icon) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Kolors.greyBlue.withOpacity(0.5),
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            'assets/icons/$icon.png',
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }
}
