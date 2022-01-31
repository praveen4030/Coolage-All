library college;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cards/cards.dart';
import 'package:cards/widgets/edit_card_tile.dart';
import 'package:college/application/college_groups/college_groups_bloc.dart';
import 'package:college/domain/contact_info_group.dart';
import 'package:college/domain/group_model.dart';
import 'package:college/ui/pages/add_about_college.dart';
import 'package:college/ui/pages/add_department_group/add_department_group.dart';
import 'package:college/ui/widgets/add_official_link_dialog.dart';
import 'package:college/ui/widgets/view_members.dart';
import 'package:flutter/services.dart';
import 'package:user/user.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/college/college_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:college/injection.dart';

part 'domain/about_college_model.dart';
part 'domain/college_details_model.dart';
part 'domain/college_model.dart';
part 'domain/official_links.dart';
part 'domain/college_getter.dart';
part 'ui/pages/departments_page.dart';
part 'ui/pages/groups_page.dart';
part 'ui/pages/group_details_page.dart';
part 'ui/cards/add_college_images_page.dart';
part 'ui/cards/add_college_banners_page.dart';

part 'ui/widgets/group_tile.dart';

part 'ui/about_college.dart';
part 'ui/about_page.dart';
part 'ui/college_map.dart';
part 'ui/official_links.dart';
part 'ui/my_college.dart';

class CollegeCoreFunctionality {
  static bool isAdmin = false;
  static void initialize({bool? isAdminApp}) {
    isAdmin = isAdminApp ?? false;
    configureInjection(Environment.prod);
  }
}
