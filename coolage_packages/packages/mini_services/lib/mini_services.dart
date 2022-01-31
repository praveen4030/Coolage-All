library mini_services;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college/application/college/college_bloc.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_services/application/services/services_bloc.dart';
import 'package:mini_services/ui/add_service_provider/pages/add_mini_service_provider_page.dart';
import 'package:user/user.dart';

import 'injection.dart';

part 'domain/service_provider.dart';
part 'ui/all_mini_services_page_admin.dart';

part 'ui/mini_services_page.dart';
part 'ui/mini_service_details_page.dart';
part 'ui/mini_service_provider_tile.dart';
part 'ui/widgets/service_card.dart';

class MiniServicesCoreFunctionality {
  static bool isAdmin = false;
  static void initialize({bool? isAdminApp}) {
    isAdmin = isAdminApp ?? false;
    configureInjection(Environment.prod);
  }
}
