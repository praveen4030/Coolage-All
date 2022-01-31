import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/presentation/profile/widgets/placement_profile_header.dart';
import 'package:placement/presentation/profile/widgets/user_applications.dart';
import 'package:user/user.dart';

class PlacementProfilePage extends StatelessWidget {
  const PlacementProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Kolors.greyWhite,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: ListView(
        children: [
          PlacementProfileHeaderWidget(
            coolUser: Getters.getCurrentUser(CoreGetters.getContext),
          ),
          UserApplicationsWidget(),
        ],
      ),
    ));
  }
}
