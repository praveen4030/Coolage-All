library placement;

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:placement/injection.dart';
import 'package:placement/presentation/company/companies_page.dart';
import 'package:placement/presentation/company/pages/all_companies_page.dart';
import 'package:placement/presentation/company/pages/open_for_you_companies_page.dart';
import 'package:placement/presentation/profile/placement_profile.dart';
import 'package:placement/presentation/results/results_page.dart';

part 'presentation/placements_page.dart';

class PlacementCoreFunctionality {
  static bool isAdmin = false;
  static void initialize({bool? isAdminApp}) {
    isAdmin = isAdminApp ?? false;
    configureInjection(Environment.prod);
  }
}
