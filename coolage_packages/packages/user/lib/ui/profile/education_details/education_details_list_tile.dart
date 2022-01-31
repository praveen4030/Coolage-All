import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/add_button.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:user/ui/profile/education_details/add_education_detail.dart';
import 'package:user/ui/profile/education_details/edit_education_details.dart';
import 'package:user/ui/profile/education_details/education_detail_tile.dart';
import 'package:user/ui/profile/widgets/user_profile_tile_header.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:user/user.dart';

class EducationDetailsListTile extends StatelessWidget {
  final List<EducationDetailsModel>? list;

  const EducationDetailsListTile({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (EducationDetailsModel.noVisibleElementPresentForOtherUser(
                list ?? []) &&
            !state.isCurrentUser) return Container();
        return UserProfileTileHeader(
          iconName: 'profile/education_details',
          text: 'Educational Details',
          onEditTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EditEducationDetailsPage()));
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
                    return EducationDetailTile(
                      educationDetailsModel: list![index],
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
                            return const AddEducationDetailWidget();
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
