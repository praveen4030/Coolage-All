import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/add_button.dart';
import 'package:user/ui/profile/work_experience/add_work_experience.dart';
import 'package:user/ui/profile/work_experience/edit_work_experience.dart';
import 'package:user/ui/profile/widgets/user_profile_tile_header.dart';
import 'package:user/ui/profile/work_experience/work_experience_tile.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

class WorkExperienceListTile extends StatelessWidget {
  final List<WorkExperienceModel>? list;
  const WorkExperienceListTile({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (WorkExperienceModel.noVisibleElementPresentForOtherUser(
                list ?? []) &&
            !state.isCurrentUser) return Container();
        return UserProfileTileHeader(
          iconName: 'profile/work_experience',
          text: 'Work Experience',
          onEditTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const EditWorkExperiencePage()));
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
                    return WorkExperienceTile(
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
                            return const AddWorkExperienceWidget();
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
