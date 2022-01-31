import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/add_button.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:user/ui/profile/skills/add_skill.dart';
import 'package:user/ui/profile/skills/edit_skills.dart';
import 'package:user/ui/profile/skills/skill_tile.dart';
import 'package:user/ui/profile/widgets/user_profile_tile_header.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

class SkillsListTile extends StatefulWidget {
  final List<SkillsModel>? list;
  const SkillsListTile({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  State<SkillsListTile> createState() => _SkillsListTileState();
}

class _SkillsListTileState extends State<SkillsListTile> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return BlocBuilder<UserDetailsBloc, UserDetailsState>(
          builder: (context, state) {
            if (SkillsModel.noVisibleElementPresentForOtherUser(
                    widget.list ?? []) &&
                !state.isCurrentUser) return Container();
            return UserProfileTileHeader(
              iconName: 'profile/skills',
              text: 'Skills',
              onEditTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                        builder: (context) => EditSkillsPage()))
                    .then((_) {
                  setState(() {});
                });
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
                        return SkillTile(
                          skillsModel: widget.list![index],
                        );
                      },
                      itemCount: widget.list!.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    if (state.isCurrentUser)
                      AddButtonWidget(
                        onTap: () async {
                          await showModalBottomSheet(
                              enableDrag: true,
                              isScrollControlled: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              context: context,
                              builder: (context) {
                                return const AddSkillWidget();
                              });
                        },
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
