import 'package:coolage/presentation/auth/pages/college_emailid_page.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class GetEmailWidget extends StatelessWidget {
  final Function onChange;
  const GetEmailWidget({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset(
                      "assets/illustrations/fill_email.png",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const CustomText(
                      text: "Feed",
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 4),
              child: const CustomText(
                text: "Provide your college email id to view feed",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Kolors.greyBlue,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        BorderButton(
          width: 232,
          text: "Register college email",
          onTap: () {
            Navigator.of(context, rootNavigator: true)
                .push(
              MaterialPageRoute(
                builder: (context) => const CollegeEmailIdPage(
                  isDuringOnboardingProcess: false,
                ),
              ),
            )
                .then((_) {
              onChange();
            });
          },
          borderRadius: 25,
          fontSize: 18,
          color: Kolors.primaryColor1,
          fontColor: Kolors.primaryColor1,
        ),
        const SizedBox(
          height: 120,
        ),
      ],
    );
  }
}
