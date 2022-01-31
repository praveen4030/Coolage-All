import 'package:blogs/blogs.dart';
import 'package:canteen/application/canteen_cards/canteen_cards_bloc.dart';
import 'package:canteen/application/canteen_details/canteen_details_bloc.dart';
import 'package:canteen/application/user_orders/user_orders_bloc.dart';
import 'package:college/application/college/college_bloc.dart';
import 'package:college/application/college_groups/college_groups_bloc.dart';
import 'package:coolage/application/profile/onboarding/onboarding_bloc.dart';
import 'package:coolage/infrastructure/core/services/push_notificatio_service.dart';
import 'package:coolage/presentation/core/pages/splash_page.dart';
import 'package:coolage/presentation/core/widgets/custom_layout.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';
import 'package:feed/application/feed/feed_bloc.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_services/application/services/services_bloc.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/application/profile/achievements/achievements_bloc.dart';
import 'package:user/application/profile/campus_pors/campus_pors_bloc.dart';
import 'package:user/application/profile/education_details/education_details_bloc.dart';
import 'package:user/application/profile/general_details/general_details_bloc.dart';
import 'package:user/application/profile/languages/languages_bloc.dart';
import 'package:user/application/profile/projects/projects_bloc.dart';
import 'package:user/application/profile/skills/skills_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/application/profile/work_experience/work_experience_bloc.dart';

import '../../../injection.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  Future<void>? _initializeFlutterFireFuture;

  Future<void> _initializeFlutterFire() async {
    // Wait for Firebase to initialize

    if (!kIsWeb) {
      final String? token = await FirebaseMessaging.instance.getToken();
      debugPrint("Instance ID: ${token!}");
      await FirebaseCrashlytics.instance
          .setCrashlyticsCollectionEnabled(!kDebugMode);
      FlutterError.onError = (FlutterErrorDetails errorDetails) async {
        await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
        debugPrint(errorDetails.toString());
      };
    }
  }

  @override
  void initState() {
    super.initState();

    _initializeFlutterFireFuture = _initializeFlutterFire();
    if (!kIsWeb) {
      PushNotificationService.initialise(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthenticationBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FeedBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CanteenCardsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CanteenDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CollegeBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ServicesBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<BlogsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserOrdersBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CoolageDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AchievementsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SkillsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ProjectsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<WorkExperienceBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<EducationDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CampusPorsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<GeneralDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<OnboardingBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CollegeGroupsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<LanguagesBloc>(),
        ),
      ],
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          return CustomLayout(
            child: MaterialApp(
              navigatorKey: CoreGetters.navigatorKey,
              title: 'Coolage',
              debugShowCheckedModeBanner: false,
              theme: appThemeData[AppTheme.light],
              home: const SplashPage(),
            ),
          );
        },
      ),
    );
  }
}
