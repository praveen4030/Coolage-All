library cards;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cards/pages/add_edit_cards_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

part 'widgets/cards_list.dart';
part 'widgets/card_tile.dart';
part 'widgets/card_index_indicator.dart';
part 'models/cards.dart';
part 'widgets/empty_card.dart';

class CardsCoreFunctionality {
  static bool isAdmin = false;
  static void initialize({bool? isAdminApp}) {
    isAdmin = isAdminApp ?? false;
  }
}
