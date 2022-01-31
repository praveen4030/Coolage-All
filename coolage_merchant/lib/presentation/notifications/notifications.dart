import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/models/notification_model.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/widgets/app_bar.dart';
import 'package:coolage_merchant/presentation/core/widgets/gradient_background.dart';
import 'package:coolage_merchant/presentation/notifications/widgets/notification_tile.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<NotificationModel> list = [];
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CoolageAppBar(actions: [], text: 'Notification'),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return NotificationTile(model: list[index]);
              },
            )),
      ),
    );
  }
}
