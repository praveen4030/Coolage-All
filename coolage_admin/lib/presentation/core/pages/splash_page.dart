import 'package:coolage_admin/presentation/auth/login.dart';
import 'package:coolage_admin/presentation/base/base.dart';
import 'package:coolage_admin/presentation/core/functions/app_start_function.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    context
        .read<AuthenticationBloc>()
        .add(const AuthenticationEvent.authCheckRequested());
    context.read<CoolageDetailsBloc>().add(const CoolageDetailsEvent.started());
  }

  @override
  Widget build(BuildContext mainContext) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) async {
        state.userDetailOptResult.fold(
          () {
            if (!Getters.isUserLoggedIn()) {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            }
          },
          (either) {
            either.fold(
              (failure) {
                if (!Getters.isUserLoggedIn()) {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LoginPage()));
                }
              },
              (isDetailsAvailable) async {
                if (isDetailsAvailable) {
                  if (state.coolUser!.isAdmin!) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const BasePage()));
                  } else {
                    Fluttertoast.showToast(
                        msg:
                            "You are not an authorised admin! Please contact Coolage team for more details!");
                  }
                } else {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LoginPage()));
                }
              },
            );
          },
        );
      },
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              radius: 1,
              colors: [
                Kolors.primaryColor1,
                Color(0xff4500A8),
              ],
              stops: [
                0.0,
                1.0,
              ],
            ),
          ),
          child: Image.asset(
            'assets/images/background_splash.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
