import 'package:coolage/presentation/auth/pages/user_name_page.dart';
import 'package:coolage/presentation/auth/redirect_based_on_details.dart';
import 'package:coolage/presentation/base/base.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class GoogleLoginWidget extends StatefulWidget {
  const GoogleLoginWidget({Key? key}) : super(key: key);

  @override
  State<GoogleLoginWidget> createState() => _GoogleLoginWidgetState();
}

class _GoogleLoginWidgetState extends State<GoogleLoginWidget> {
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
              text: "Sign in with google",
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
    final user = await GoogleSignInFunctions.handleSignIn(context);
    if (user != null) {
      final checkIfUserExists = await FirebaseFunctions.checkIfUserExists();
      if (checkIfUserExists) {
        await AuthNavigation.redirectUserBasedOnDetails(context);
      } else {
        Navigator.of(context).popUntil((route) => route.isFirst);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const UserNamePage()));
      }
    }
    setState(() {
      isLoading = false;
    });
  }
}
