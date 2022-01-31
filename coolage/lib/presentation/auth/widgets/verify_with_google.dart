import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

class VerifyWithGoogleLoginWidget extends StatefulWidget {
  final String college;
  final Function onSuccessfulVerification;
  const VerifyWithGoogleLoginWidget({
    Key? key,
    required this.college,
    required this.onSuccessfulVerification,
  }) : super(key: key);

  @override
  State<VerifyWithGoogleLoginWidget> createState() =>
      _VerifyWithGoogleLoginWidgetState();
}

class _VerifyWithGoogleLoginWidgetState
    extends State<VerifyWithGoogleLoginWidget> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        signInWithGoogle(context);
      },
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlack.withOpacity(0.25),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 20,
            ),
            if (isLoading)
              Container(
                height: 24,
                width: 24,
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
              )
            else
              Image.asset(
                'assets/icons/google_logo.png',
                height: 20,
                width: 20,
              ),
            const SizedBox(
              width: 10,
            ),
            const CustomText(
              text: "Verify with google",
              color: Kolors.greyBlue,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }

  Future signInWithGoogle(BuildContext context) async {
    setState(() {
      isLoading = true;
    });
    final emailId = await GoogleSignInFunctions.verifyCollegeSignIn(
        widget.college, context);
    setState(() {
      isLoading = false;
    });
    if (emailId?.isNotEmpty ?? false) {
      widget.onSuccessfulVerification(emailId);
    }
  }
}
