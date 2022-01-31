import 'package:user/application/profile/achievements/achievements_bloc.dart';
import 'package:user/ui/profile/achievements/achievement_tile.dart';
import 'package:user/ui/profile/achievements/add_achievement.dart';
import 'package:user/ui/profile/widgets/edit_user_detail_tile.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class EditAchievementsPage extends StatefulWidget {
  const EditAchievementsPage({Key? key}) : super(key: key);

  @override
  _EditAchievementsPageState createState() => _EditAchievementsPageState();
}

class _EditAchievementsPageState extends State<EditAchievementsPage> {
  final formKey = GlobalKey<FormState>();
  CoolUser? coolUser;
  List<AchievementsModel> achievementsList = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, userState) {
        coolUser = Getters.getCurrentUser(context);
        if (coolUser!.studentProfileModel != null) {
          achievementsList = coolUser!
                  .studentProfileModel!.achievementsModel?.values
                  .toList() ??
              [];
        }
        return BlocConsumer<AchievementsBloc, AchievementsState>(
          listener: (context, state) {},
          builder: (context, state) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: Kolors.greyWhite,
                appBar: const PreferredSize(
                  preferredSize: Size.fromHeight(80),
                  child: CoolageAppBar(
                    isCenter: true,
                    actions: [],
                    text: "Edit Achievements",
                  ),
                ),
                body: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: achievementsList.length,
                            itemBuilder: (context, index) {
                              return EditUserDetailTile(
                                isDeleteLoading: state.isDeleteLoading,
                                isVisible:
                                    achievementsList[index].isVisible ?? true,
                                onEyeTap: () {
                                  final AchievementsModel model =
                                      AchievementsModel.fromMap(
                                          achievementsList[index].toMap());
                                  model.isVisible = !(model.isVisible ?? false);
                                  context
                                      .read<AchievementsBloc>()
                                      .add(AchievementsEvent.addAchievement(
                                        onAdd: (AchievementsModel model) {
                                          final user =
                                              Getters.getCurrentUser(context);
                                          user.studentProfileModel!
                                              .achievementsModel!
                                              .update(
                                                  achievementsList[index].id!,
                                                  (_) => model);
                                          context
                                              .read<AuthenticationBloc>()
                                              .add(AuthenticationEvent
                                                  .userModified(user: user));
                                        },
                                        model: model,
                                      ));
                                },
                                onEditTap: () async {
                                  await showModalBottomSheet(
                                      enableDrag: true,
                                      isScrollControlled: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      context: context,
                                      builder: (context) {
                                        return AddAchievementWidget(
                                          achievementsModel:
                                              achievementsList[index],
                                        );
                                      });
                                },
                                onDeleteTap: () {
                                  context
                                      .read<AchievementsBloc>()
                                      .add(AchievementsEvent.delete(
                                          model: achievementsList[index],
                                          index: index,
                                          onDelete: () {
                                            final user = userState.coolUser!;
                                            user.studentProfileModel!
                                                .achievementsModel!
                                                .remove(
                                                    achievementsList[index].id);
                                            context
                                                .read<AuthenticationBloc>()
                                                .add(AuthenticationEvent
                                                    .userModified(user: user));
                                          }));
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: AchievementTile(
                                    achievementsModel: achievementsList[index],
                                    isDivider: false,
                                    isShowingVisibleButton: false,
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerFloat,
                floatingActionButton: FloatingActionButton(
                  backgroundColor: Kolors.greyBlue,
                  onPressed: () async {
                    await showModalBottomSheet(
                        enableDrag: true,
                        isScrollControlled: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        context: context,
                        builder: (context) {
                          return const AddAchievementWidget();
                        });
                  },
                  child: const IconImagesWid(
                    iconName: 'add.png',
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
