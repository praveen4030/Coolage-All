library feed;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:feed/ui/add_feed/pages/add_feed_item.dart';
import 'package:feed/ui/feed_likes_widget.dart';
import 'package:feed/ui/publish_feed/publish_feed_header.dart';
import 'package:feed/ui/single_feed_post_page.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:user/user.dart';
import 'package:intl/intl.dart' as intl;

import 'application/feed/feed_bloc.dart';
import 'injection.dart';
part 'domain/feed_dynamic_links.dart';

part 'ui/feed_tile.dart';
part 'ui/feed_page.dart';
part 'domain/feed_model.dart';
part 'ui/publish_feed/publish_feed.dart';
part 'ui/publish_feed/user_posts_feed_page.dart';

class FeedCoreFunctionality {
  static bool isAdmin = false;
  static void initialize({bool? isAdminApp}) {
    isAdmin = isAdminApp ?? false;
    configureInjection(Environment.prod);
  }
}
