import 'package:user/application/profile/achievements/achievements_bloc.dart';
import 'package:user/ui/profile/widgets/add_profile_header.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class AddAchievementWidget extends StatefulWidget {
  final AchievementsModel? achievementsModel;
  const AddAchievementWidget({
    Key? key,
    this.achievementsModel,
  }) : super(key: key);

  @override
  _AddAchievementWidgetState createState() => _AddAchievementWidgetState();
}

class _AddAchievementWidgetState extends State<AddAchievementWidget> {
  bool isEditingMode = false;
  final formKey = GlobalKey<FormState>();
  final achievementTEC = TextEditingController();
  bool isEdit = false;
  @override
  void initState() {
    super.initState();
    if (widget.achievementsModel != null) {
      isEdit = true;
      achievementTEC.text = widget.achievementsModel!.achievement ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AchievementsBloc, AchievementsState>(
      listener: (context, state) {
        state.actionFailureOpt.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                Navigator.of(context).pop();
                FlushbarHelper.createError(message: failure.error)
                    .show(context);
              },
              (message) {
                Navigator.of(context).pop();
                Fluttertoast.showToast(msg: message);
              },
            );
          },
        );
      },
      builder: (context, state) {
        bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;

        return Container(
          padding: MediaQuery.of(context).viewInsets,
          child: Form(
            key: formKey,
            onChanged: () {
              setState(() {
                isEditingMode = true;
              });
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AddProfileHeader(
                  title: isEdit ? "Edit Achievement" : "Add Achievement",
                  isSavingLoading: state.isLoading,
                  onSaveTap: () {
                    final model = AchievementsModel(
                      achievement: achievementTEC.text,
                      isVisible:
                          isEdit ? widget.achievementsModel!.isVisible : true,
                      id: isEdit ? widget.achievementsModel!.id : null,
                    );
                    if (isEdit) {
                      context
                          .read<AchievementsBloc>()
                          .add(AchievementsEvent.addAchievement(
                            onAdd: (AchievementsModel model) {
                              final user = Getters.getCurrentUser(context);
                              user.studentProfileModel!.achievementsModel!
                                  .update(widget.achievementsModel!.id!,
                                      (_) => model);

                              context.read<AuthenticationBloc>().add(
                                  AuthenticationEvent.userModified(user: user));
                            },
                            model: model,
                          ));
                    } else {
                      context.read<AchievementsBloc>().add(
                            AchievementsEvent.addAchievement(
                              onAdd: (AchievementsModel achievementModel) {
                                final user = Getters.getCurrentUser(context);
                                user.studentProfileModel!.achievementsModel!
                                    .putIfAbsent(achievementModel.id!,
                                        () => achievementModel);
                                context.read<AuthenticationBloc>().add(
                                    AuthenticationEvent.userModified(
                                        user: user));
                              },
                              model: model,
                            ),
                          );
                    }
                  },
                  isEditingMode: isEditingMode,
                ),
                Container(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height *
                          (isKeyboardOpen ? 0.4 : 0.8)),
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldBoxWidget(
                            controller: achievementTEC,
                            hint: "Achievement",
                            maxLength: 50,
                            validationFn: (val) {
                              return val?.isNotEmpty ?? false
                                  ? null
                                  : "Please add achievement";
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
