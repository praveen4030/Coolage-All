import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/add_button.dart';
import 'package:user/ui/profile/achievements/achievement_tile.dart';
import 'package:user/ui/profile/achievements/add_achievement.dart';
import 'package:user/ui/profile/achievements/edit_achievements.dart';
import 'package:user/ui/profile/widgets/user_profile_tile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/user.dart';

class AchievementsListTile extends StatelessWidget {
  final List<AchievementsModel>? list;

  const AchievementsListTile({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (AchievementsModel.noVisibleElementPresentForOtherUser(list ?? []) &&
            !state.isCurrentUser) return Container();
        return UserProfileTileHeader(
          iconName: 'profile/achievements',
          text: 'Achievements',
          onEditTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(
                    builder: (context) => const EditAchievementsPage()))
                .then((_) {});
          },
          child: Container(
            padding: const EdgeInsets.only(
              left: 48,
              right: 20,
              top: 14,
              bottom: 20,
            ),
            color: Colors.white,
            child: Column(
              children: [
                ListView.builder(
                  itemBuilder: (context, index) {
                    return AchievementTile(
                      achievementsModel: list![index],
                    );
                  },
                  itemCount: list!.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
                const SizedBox(
                  height: 4,
                ),
                if (state.isCurrentUser)
                  if (state.isCurrentUser)
                    AddButtonWidget(
                      onTap: () async {
                        await showModalBottomSheet(
                            enableDrag: true,
                            isScrollControlled: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            context: context,
                            builder: (context) {
                              return const AddAchievementWidget();
                            });
                      },
                    ),
              ],
            ),
          ),
        );
      },
    );
  }
}
