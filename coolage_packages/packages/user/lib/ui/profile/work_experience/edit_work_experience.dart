import 'package:user/application/profile/work_experience/work_experience_bloc.dart';
import 'package:user/ui/profile/widgets/edit_user_detail_tile.dart';
import 'package:user/ui/profile/work_experience/add_work_experience.dart';
import 'package:user/ui/profile/work_experience/work_experience_tile.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class EditWorkExperiencePage extends StatefulWidget {
  const EditWorkExperiencePage({Key? key}) : super(key: key);

  @override
  _EditWorkExperiencePageState createState() => _EditWorkExperiencePageState();
}

class _EditWorkExperiencePageState extends State<EditWorkExperiencePage> {
  final formKey = GlobalKey<FormState>();
  CoolUser? coolUser;
  List<WorkExperienceModel> workExperienceList = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, userState) {
        return BlocConsumer<WorkExperienceBloc, WorkExperienceState>(
          listener: (context, state) {},
          builder: (context, state) {
            coolUser = Getters.getCurrentUser(context);
            if (coolUser!.studentProfileModel != null) {
              workExperienceList = coolUser!
                      .studentProfileModel!.workExperienceModel?.values
                      .toList() ??
                  [];
            }
            return SafeArea(
              child: Scaffold(
                backgroundColor: Kolors.greyWhite,
                appBar: const PreferredSize(
                  preferredSize: Size.fromHeight(80),
                  child: CoolageAppBar(
                    isCenter: true,
                    actions: [],
                    text: "Edit Work Experience",
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
                            itemCount: workExperienceList.length,
                            itemBuilder: (context, index) {
                              return EditUserDetailTile(
                                isDeleteLoading: state.isDeleteLoading,
                                onEyeTap: () {
                                  final WorkExperienceModel model =
                                      WorkExperienceModel.fromMap(
                                          workExperienceList[index].toMap());
                                  model.isVisible = !(model.isVisible ?? false);
                                  context.read<WorkExperienceBloc>().add(
                                          WorkExperienceEvent.addWorkExperience(
                                        onAdd: (WorkExperienceModel model) {
                                          final user =
                                              Getters.getCurrentUser(context);
                                          user.studentProfileModel!
                                              .workExperienceModel!
                                              .update(
                                                  workExperienceList[index].id!,
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
                                        return AddWorkExperienceWidget(
                                          model: workExperienceList[index],
                                        );
                                      });
                                },
                                onDeleteTap: () {
                                  context
                                      .read<WorkExperienceBloc>()
                                      .add(WorkExperienceEvent.delete(
                                          model: workExperienceList[index],
                                          index: index,
                                          onDelete: () {
                                            final user = userState.coolUser!;
                                            user.studentProfileModel!
                                                .workExperienceModel!
                                                .remove(
                                                    workExperienceList[index]
                                                        .id);
                                            context
                                                .read<AuthenticationBloc>()
                                                .add(AuthenticationEvent
                                                    .userModified(user: user));
                                          }));
                                },
                                isVisible:
                                    workExperienceList[index].isVisible ?? true,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: WorkExperienceTile(
                                    model: workExperienceList[index],
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
                          return const AddWorkExperienceWidget();
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
