import 'package:blogs/blogs.dart';
import 'package:cards/cards.dart';
import 'package:college/college.dart';
import 'package:coolage_admin/injection.dart';
import 'package:core/core.dart';
import 'package:feed/feed.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_services/mini_services.dart';
import 'package:user/user.dart';

import 'presentation/core/pages/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  CoreFunctionality.initialize();
  FeedCoreFunctionality.initialize(isAdminApp: true);
  UserCoreFunctionality.initialize(isAdminApp: true);
  CardsCoreFunctionality.initialize(isAdminApp: true);

  CollegeCoreFunctionality.initialize(isAdminApp: true);
  MiniServicesCoreFunctionality.initialize(isAdminApp: true);
  BlogCoreFunctionality.initialize(isAdminApp: true);
  configureInjection(Environment.prod);

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const AppWidget());
}
