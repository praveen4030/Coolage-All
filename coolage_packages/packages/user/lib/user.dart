library user;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_sign_in/google_sign_in.dart' as google;

import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:package_info/package_info.dart';
import 'package:user/domain/auth/fetch_user_details.dart';
import 'package:user/domain/user_group_model.dart';
import 'package:user/injection.dart';
import 'package:user/ui/profile/user_profile.dart';
import 'application/auth/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'domain/cool_user.dart';
part 'domain/delivery_address_model.dart';
part 'domain/getter.dart';
part 'domain/user_profile/achievements_model.dart';
part 'domain/user_profile/language_model.dart';
part 'domain/auth/user_dynamic_links.dart';

part 'domain/user_profile/address_model.dart';
part 'domain/user_profile/campus_pors_model.dart';
part 'domain/user_profile/education_details_model.dart';
part 'domain/user_profile/general_details_model.dart';
part 'domain/user_profile/projects_model.dart';
part 'domain/user_profile/skills_model.dart';
part 'domain/user_profile/string_visible_data_type.dart';
part 'domain/user_profile/student_profile_model.dart';
part 'domain/user_profile/timestamp_visible.dart';
part 'domain/user_profile/work_expeirence_model.dart';
part 'domain/auth/google_sign_in.dart';
part 'domain/auth/auth_phone_login.dart';

part 'ui/widgets/google_sign_in_button.dart';

class UserCoreFunctionality {
  static bool isAdmin = false;
  static void initialize({bool? isAdminApp}) {
    isAdmin = isAdminApp ?? false;
    configureInjection(Environment.prod);
  }
}
