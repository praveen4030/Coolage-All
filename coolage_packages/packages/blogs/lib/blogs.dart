library blogs;

import 'package:blogs/application/blogs/blogs_bloc.dart';
import 'package:blogs/injection.dart';
import 'package:blogs/ui/add_blog/pages/add_blog_page.dart';
import 'package:blogs/ui/blog_like_widget.dart';
import 'package:blogs/ui/publish_blogs/publish_blogs_header.dart';
import 'package:blogs/ui/single_blog_post_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college/college.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart' as intl;

import 'package:injectable/injectable.dart';
import 'package:user/user.dart';

export 'package:blogs/application/blogs/blogs_bloc.dart' show BlogsBloc;

part 'domain/blogs_model.dart';
part 'domain/blog_dynamic_links.dart';
part 'ui/blog_dropdown.dart';
part 'ui/blog_tile.dart';
part 'ui/blogs_filter_dialog.dart';
part 'ui/blogs_page.dart';
part 'ui/empty_blogs.dart';
part 'ui/publish_blogs/publish_blogs.dart';
part 'ui/publish_blogs/user_blogs_page.dart';

class BlogCoreFunctionality {
  static bool isAdmin = false;
  static void initialize({bool? isAdminApp}) {
    isAdmin = isAdminApp ?? false;
    configureInjection(Environment.prod);
  }
}
