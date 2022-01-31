import 'package:user/application/profile/projects/projects_bloc.dart';
import 'package:user/ui/profile/projects/add_project.dart';
import 'package:user/ui/profile/projects/project_tile.dart';
import 'package:user/ui/profile/widgets/edit_user_detail_tile.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class EditProjectsPage extends StatefulWidget {
  EditProjectsPage({Key? key}) : super(key: key);

  @override
  _EditProjectsPageState createState() => _EditProjectsPageState();
}

class _EditProjectsPageState extends State<EditProjectsPage> {
  final formKey = GlobalKey<FormState>();
  CoolUser? coolUser;
  List<ProjectsModel> projectsList = [];
  @override
  void initState() {
    super.initState();
    coolUser = Getters.getCurrentUser(context);
    if (coolUser!.studentProfileModel != null) {
      projectsList =
          coolUser!.studentProfileModel!.projectsModel?.values.toList() ?? [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, userState) {
        return BlocConsumer<ProjectsBloc, ProjectsState>(
          listener: (context, state) {},
          builder: (context, state) {
            coolUser = Getters.getCurrentUser(context);
            if (coolUser!.studentProfileModel != null) {
              projectsList = coolUser!
                      .studentProfileModel!.projectsModel?.values
                      .toList() ??
                  [];
            }
            return SafeArea(
              child: Scaffold(
                backgroundColor: Kolors.greyWhite,
                appBar: const PreferredSize(
                  preferredSize: const Size.fromHeight(80),
                  child: CoolageAppBar(
                    isCenter: true,
                    actions: [],
                    text: "Edit Projects",
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
                            itemCount: projectsList.length,
                            itemBuilder: (context, index) {
                              return EditUserDetailTile(
                                isDeleteLoading: state.isDeleteLoading,
                                onEyeTap: () {
                                  final ProjectsModel model =
                                      ProjectsModel.fromMap(
                                          projectsList[index].toMap());
                                  model.isVisible = !(model.isVisible ?? false);
                                  context
                                      .read<ProjectsBloc>()
                                      .add(ProjectsEvent.addProject(
                                        onAdd: (ProjectsModel model) {
                                          final user =
                                              Getters.getCurrentUser(context);
                                          user.studentProfileModel!
                                              .projectsModel!
                                              .update(projectsList[index].id!,
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
                                        return AddProjectWidget(
                                            model: projectsList[index]);
                                      });
                                },
                                onDeleteTap: () {
                                  context
                                      .read<ProjectsBloc>()
                                      .add(ProjectsEvent.delete(
                                          model: projectsList[index],
                                          index: index,
                                          onDelete: () {
                                            final user = userState.coolUser!;
                                            user.studentProfileModel!
                                                .projectsModel!
                                                .remove(projectsList[index].id);
                                            context
                                                .read<AuthenticationBloc>()
                                                .add(AuthenticationEvent
                                                    .userModified(user: user));
                                          }));
                                },
                                isVisible:
                                    projectsList[index].isVisible ?? true,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: ProjectTile(
                                    model: projectsList[index],
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
                          return const AddProjectWidget();
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
