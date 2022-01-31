import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/application/auth/authentication_bloc.dart';
import 'package:coolage_merchant/presentation/core/functions/app_start_function.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart' as extend;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext mainContext) {
    mainContext
        .read<AuthenticationBloc>()
        .add(const AuthenticationEvent.authCheckRequested());
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) async {
        if (state.isSignedIn ?? false) {
          if (state.isDetailsAvailable!) {
            AutoRouter.of(context).replace(const BasePageRoute());
          } else {
            AutoRouter.of(context).replace(const UserDetailsPageRoute());
          }
        } else {
          AutoRouter.of(context).popUntilRoot();
          AutoRouter.of(context).replace(const LoginPageRoute());
        }
      },
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/coolage.png',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
