library core;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:canteen/application/canteen_details/canteen_details_bloc.dart';
import 'package:canteen/application/user_orders/user_orders_bloc.dart';
import 'package:canteen/domain/i_canteen_repo.dart';
import 'package:canteen/domain/models/cart_model.dart';
import 'package:canteen/domain/models/deliverable_zones_model.dart';
import 'package:cashfree_pg/cashfree_pg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/domain/helpers/secure_constants.dart';
import 'package:core/injection.dart';
import 'package:core/ui/widgets/buttons/cancel_button.dart';
import 'package:core/ui/widgets/buttons/save_button.dart';
// import 'package:country_code_picker/country_code_picker.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart' as intl;
import 'package:lottie/lottie.dart';
import 'package:user/ui/dialogs/phone_authentication_dialog.dart';
import 'package:user/ui/dialogs/verify_otp_dialog.dart';
import 'package:user/user.dart';
import 'package:canteen/canteen.dart';
import 'package:flushbar/flushbar_helper.dart';

import 'package:college/college.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/src/provider.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:dio/dio.dart';

part 'domain/functions/functions.dart';
part 'domain/functions/auth_functions.dart';
part 'domain/functions/firebase_functions.dart';
part 'domain/functions/date_time_functions.dart';

part 'domain/functions/image_picker_helper.dart';
part 'domain/helpers/constants.dart';
part 'domain/helpers/enum.dart';
part 'domain/helpers/firebase_helpers.dart';
part 'domain/helpers/core_getters.dart';

part 'domain/models/coolage_details_model.dart';
part 'domain/models/onboarded_college.dart';
part 'domain/models/order_tnc_model.dart';
part 'domain/failure/firebase_failure.dart';

part 'ui/pages/not_found.dart';
part 'ui/pages/photo_view.dart';
part 'ui/pages/web_view.dart';

part 'ui/theme/colors.dart';
part 'ui/theme/fonts.dart';
part 'ui/theme/styles.dart';
part 'ui/theme/theme.dart';

part 'ui/widgets/app_bar.dart';
part 'ui/widgets/dialogs/confirm_alert_dialog.dart';

part 'ui/widgets/border_button.dart';
part 'ui/widgets/button.dart';
part 'ui/widgets/drawer_tile.dart';
part 'ui/widgets/tags_widget.dart';

part 'ui/widgets/circle_icon.dart';
part 'ui/widgets/cross_dialog.dart';
part 'ui/widgets/custom_text.dart';
part 'ui/widgets/drop_down/drop_down_button.dart';
part 'ui/widgets/drop_down/drop_down_list.dart';
part 'ui/widgets/edit_circular.dart';
part 'ui/widgets/exandable_text.dart';
part 'ui/widgets/icon_images.dart';
part 'ui/widgets/icon_with_background.dart';
part 'ui/widgets/icon_with_white_background.dart';
part 'ui/widgets/image_picker_dialog.dart';
part 'ui/widgets/label_text_field.dart';
part 'ui/widgets/loading.dart';
part 'ui/widgets/menu_popup.dart';
part 'ui/widgets/photo_view_tap.dart';
part 'ui/widgets/pick_image.dart';
part 'ui/widgets/pin_fields.dart';
part 'ui/widgets/price_widget.dart';
part 'ui/widgets/purple_gradient_button.dart';
part 'ui/widgets/qty_widget.dart';
part 'ui/widgets/rupees_sign.dart';
part 'ui/widgets/search/search_box.dart';
part 'ui/widgets/search/search_field.dart';
part 'ui/widgets/dialogs/select_items_list.dart';
part 'ui/widgets/back_button.dart';
part 'ui/widgets/otp_fields.dart';

part 'ui/widgets/square_icon.dart';
part 'ui/widgets/tab_indicator.dart';
part 'ui/widgets/tag.dart';
part 'ui/widgets/text_field_top_text.dart';
part 'ui/widgets/user_profile_circular.dart';
part 'ui/widgets/blue_button.dart';
part 'ui/widgets/home_button.dart';
part 'ui/widgets/card_header_text.dart';
part 'ui/widgets/delete_tile.dart';
part 'ui/widgets/radio_tile.dart';
part 'ui/widgets/edit_app_bar.dart';
part 'ui/widgets/square_border_icon.dart';
part 'ui/widgets/selected_tile.dart';
part 'ui/widgets/check_box.dart';
part 'ui/widgets/buttons/circle_add_button.dart';
part 'ui/widgets/tab_icon_widget.dart';
part 'ui/widgets/social_media_icon.dart';
// part 'ui/widgets/country_code_widget.dart';

part 'ui/widgets/buttons/primary_border_button.dart';
part 'ui/widgets/buttons/primary_button.dart';
part 'ui/widgets/buttons/continue_button.dart';

part 'ui/widgets/text_fields/text_field_box.dart';
part 'ui/widgets/text_fields/text_field_line.dart';

part 'ui/payment/razorpay.dart';

class CoreFunctionality {
  static void initialize() {
    configureInjection(Environment.prod);
  }
}
