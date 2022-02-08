import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/presentation/auth/authentication.dart';
import 'package:coolage/presentation/auth/pages/student_course_page.dart';
import 'package:coolage/presentation/auth/pages/user_name_page.dart';
import 'package:coolage/presentation/auth/redirect_based_on_details.dart';
import 'package:coolage/presentation/base/base.dart';
import 'package:coolage/presentation/core/functions/app_start_function.dart';
import 'package:coolage/presentation/core/pages/maintenance_page.dart';
import 'package:coolage/presentation/core/pages/update_available_page.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void callEvents() {
    debugPrint('this is called events');
    context
        .read<AuthenticationBloc>()
        .add(const AuthenticationEvent.authCheckRequested());
    context.read<CoolageDetailsBloc>().add(const CoolageDetailsEvent.started());
    AppStartFunction.handleIncomingUniLinks(context);
    DynamicLinkFunctions.handleDynamicLinks();
  }

  final Future<FirebaseApp> _initFirebaseSdk = Firebase.initializeApp();

  @override
  Widget build(BuildContext mainContext) {
    return FutureBuilder(
      future: _initFirebaseSdk,
      builder: (_, snapshot) {
        if (snapshot.hasError) return Container();
        if (snapshot.connectionState == ConnectionState.done) {
          // Assign listener after the SDK is initialized successfully
          FirebaseAuth.instance.authStateChanges().listen((User? user) {
            if (user == null) {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const AuthenticationPage()));
            } else {
              debugPrint(user.toString());
              callEvents();
            }
          });
        }
        return splashPageLogic();
      },
    );
  }

  // return StreamBuilder(
  //     stream: FirebaseAuth.instance.authStateChanges(),
  //     builder: (context, AsyncSnapshot<User?> snapshot) {
  //       if (snapshot.data != null) {
  //         AuthNavigation.redirectUserBasedOnDetails(context);
  //       }
  Widget splashPageLogic() {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) async {
        state.userDetailOptResult.fold(
          () {
            if (!Getters.isUserLoggedIn()) {
              debugPrint('none');
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const AuthenticationPage()));
            }
          },
          (either) {
            either.fold(
              (failure) {
                debugPrint('failure');
                if (!Getters.isUserLoggedIn()) {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const AuthenticationPage()));
                }
              },
              (isDetailsAvailable) async {
                if (isDetailsAvailable) {
                  debugPrint('details');
                  if (AuthNavigation.checkIfUsersNeededInformationIsAvailable(
                      state.coolUser!)) {
                    final int index = await getBottomIndexToSharedPref();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => BasePage(index: index)));
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: (context) => AuthenticationPage()));
                  } else {
                    //TODO change this one
                    debugPrint('user details');
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const UserNamePage()));
                  }
                } else {
                  debugPrint('user name');
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const UserNamePage()));
                }
              },
            );
          },
        );
      },
      child: splashPageUi(),
    );
  }

  Widget splashPageUi() {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/images/background_splash.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Future<int> getBottomIndexToSharedPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('currentBaseIndex') ?? 0;
  }

  Future<bool> checkAppUpdateAvailable(BuildContext context) async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final int buildNumberCurrent = int.parse(packageInfo.buildNumber);
    final doc = await FirebaseFirestore.instance.coolageCollection
        .doc('updateDetails')
        .get();
    final data = doc.data()! as Map<String, dynamic>;
    final isMaintenance = data['isMaintenance'] as bool;
    if (isMaintenance) {
      final Timestamp timestamp = data['maintenanceTill'] as Timestamp;
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MaintenancePage(timestamp: timestamp)));
      return true;
    }

    final buildNumber = int.tryParse(data['buildNumber']?.toString() ?? '0');
    final isMandatory = data['isMandatory'] as bool;
    final appversion = data['appVersion'] as String;

    if (buildNumberCurrent < buildNumber! && isMandatory) {
      //show update available on Play Store
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => UpdateAvailablePage(appVersion: appversion)));
      return true;
    }
    return false;
  }
}
