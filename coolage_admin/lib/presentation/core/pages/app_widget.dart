import 'package:blogs/application/blogs/blogs_bloc.dart';
import 'package:college/application/college/college_bloc.dart';
import 'package:college/application/college_groups/college_groups_bloc.dart';
import 'package:coolage_admin/presentation/core/pages/splash_page.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';
import 'package:feed/application/feed/feed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_services/application/services/services_bloc.dart';
import 'package:user/application/auth/authentication_bloc.dart';

import '../../../injection.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthenticationBloc>()
            ..add(const AuthenticationEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<FeedBloc>(),
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
          create: (context) => getIt<CoolageDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CollegeGroupsBloc>(),
        ),
      ],
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Coolage',
            navigatorKey: CoreGetters.navigatorKey,
            debugShowCheckedModeBanner: false,
            theme: appThemeData[AppTheme.light],
            home: const SplashPage(),
          );
        },
      ),
    );
  }
}
