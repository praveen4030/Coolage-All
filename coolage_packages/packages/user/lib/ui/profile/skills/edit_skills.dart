import 'package:user/application/profile/skills/skills_bloc.dart';
import 'package:user/ui/profile/skills/add_skill.dart';
import 'package:user/ui/profile/skills/skill_tile.dart';
import 'package:user/ui/profile/widgets/edit_user_detail_tile.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class EditSkillsPage extends StatefulWidget {
  EditSkillsPage({Key? key}) : super(key: key);

  @override
  _EditSkillsPageState createState() => _EditSkillsPageState();
}

class _EditSkillsPageState extends State<EditSkillsPage> {
  final formKey = GlobalKey<FormState>();
  CoolUser? coolUser;
  List<SkillsModel> skillsList = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, userState) {
        coolUser = Getters.getCurrentUser(context);
        if (coolUser!.studentProfileModel != null) {
          skillsList =
              coolUser!.studentProfileModel!.skillsModel?.values.toList() ?? [];
        }
        return BlocConsumer<SkillsBloc, SkillsState>(
          listener: (context, state) {
            state.actionFailureOpt.fold(
              () {},
              (either) {
                either.fold((failure) {
                  FlushbarHelper.createError(message: failure.error)
                      .show(context);
                }, (msg) {
                  Fluttertoast.showToast(msg: msg);
                });
              },
            );
          },
          builder: (context, state) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: Kolors.greyWhite,
                appBar: const PreferredSize(
                  preferredSize: Size.fromHeight(80),
                  child: CoolageAppBar(
                    isCenter: true,
                    actions: [],
                    text: "Edit Skills",
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
                            itemCount: skillsList.length,
                            itemBuilder: (context, index) {
                              return EditUserDetailTile(
                                isEditable: false,
                                isDeleteLoading: state.isDeleteLoading,
                                onEyeTap: () {
                                  onEyeTap(index);
                                },
                                onEditTap: () async {},
                                onDeleteTap: () {
                                  context
                                      .read<SkillsBloc>()
                                      .add(SkillsEvent.delete(
                                          model: skillsList[index],
                                          onDelete: () {
                                            final user = userState.coolUser!;
                                            final skillsMapUpdated =
                                                Map<String, SkillsModel>.from(
                                                    user.studentProfileModel!
                                                        .skillsModel!);
                                            skillsMapUpdated
                                                .remove(skillsList[index].id);
                                            user.studentProfileModel!
                                                .skillsModel = skillsMapUpdated;
                                            context
                                                .read<AuthenticationBloc>()
                                                .add(AuthenticationEvent
                                                    .userModified(user: user));
                                          }));
                                },
                                isVisible: skillsList[index].isVisible ?? true,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: SkillTile(
                                    skillsModel: skillsList[index],
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
                          return const AddSkillWidget();
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

  void onEyeTap(int index) {
    final SkillsModel model = SkillsModel.fromMap(skillsList[index].toMap());
    model.isVisible = !(model.isVisible ?? true);
    context.read<SkillsBloc>().add(SkillsEvent.changeSkillVisibility(
          onChange: () {
            final user = Getters.getCurrentUser(context);
            user.studentProfileModel!.skillsModel!
                .update(skillsList[index].id!, (_) => model);
            context
                .read<AuthenticationBloc>()
                .add(AuthenticationEvent.userModified(user: user));
          },
          skillModel: model,
        ));
  }
}
