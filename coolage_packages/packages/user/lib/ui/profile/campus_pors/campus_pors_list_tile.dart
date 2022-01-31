import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/add_button.dart';
import 'package:user/ui/profile/campus_pors/add_campus_por.dart';
import 'package:user/ui/profile/campus_pors/campus_pors_tile.dart';
import 'package:user/ui/profile/campus_pors/edit_campus_pors.dart';
import 'package:user/ui/profile/widgets/user_profile_tile_header.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

class CampusPorsListTile extends StatelessWidget {
  final List<CampusPorsModel>? list;

  const CampusPorsListTile({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (CampusPorsModel.noVisibleElementPresentForOtherUser(list ?? []) &&
            !state.isCurrentUser) return Container();
        return UserProfileTileHeader(
          iconName: 'profile/campus_pors',
          text: 'Campus P.O.R.s',
          onEditTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditCampusPorsPage()));
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
                    return CampusPorsTile(
                      campusPorsModel: list![index],
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
                            return const AddCampusPorWidget();
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
