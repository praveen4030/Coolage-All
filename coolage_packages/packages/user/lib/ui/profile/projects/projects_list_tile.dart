import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/add_button.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:user/ui/profile/projects/add_project.dart';
import 'package:user/ui/profile/projects/edit_projects.dart';
import 'package:user/ui/profile/projects/project_tile.dart';
import 'package:user/ui/profile/widgets/user_profile_tile_header.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:user/user.dart';

class ProjectsListTile extends StatelessWidget {
  final List<ProjectsModel>? list;

  const ProjectsListTile({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (ProjectsModel.noVisibleElementPresentForOtherUser(list ?? []) &&
            !state.isCurrentUser) return Container();
        return UserProfileTileHeader(
          iconName: 'profile/projects',
          text: 'Projects',
          onEditTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProjectsPage()));
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
                    return ProjectTile(
                      model: list![index],
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
                  AddButtonWidget(
                    onTap: () async {
                      await showModalBottomSheet(
                          enableDrag: true,
                          isScrollControlled: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          context: context,
                          builder: (context) {
                            return const AddProjectWidget();
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
