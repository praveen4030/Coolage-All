import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class VerifyEmailWidget extends StatelessWidget {
  const VerifyEmailWidget({Key? key}) : super(key: key);

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
                      "assets/illustrations/verify_email.png",
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
                text: "Verify your college G-Suite id to view feed",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Kolors.greyBlue,
              ),
            ),
          ],
        ),
        // const SizedBox(
        //   height: 12,
        // ),
        // BorderButton(
        //   width: 232,
        //   text: "Check Email",
        //   onTap: () {
        //     //TODO not possible
        //     Functions.launchURL("https://mail.google.com/mail/u/0/#inbox");
        //   },
        //   borderRadius: 25,
        //   fontSize: 18,
        //   color: Kolors.primaryColor1,
        //   fontColor: Kolors.primaryColor1,
        // ),
        const SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () {
            sendEmailVerificationLink(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Expired?",
                style: TextStyle(
                  fontSize: 14,
                  color: Kolors.greyBlue,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                " Resend mail",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Kolors.primaryColor1,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }

  Future<void> sendEmailVerificationLink(BuildContext context) async {
    final user = FirebaseAuth.instance.currentUser!;
    try {
      await user.sendEmailVerification();
      Fluttertoast.showToast(msg: 'Email verification link sent successfully!');
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message.toString());
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}
