import 'package:user/application/profile/languages/languages_bloc.dart';
import 'package:user/ui/profile/languages/add_language.dart';
import 'package:user/ui/profile/languages/language_tile.dart';
import 'package:user/ui/profile/widgets/edit_user_detail_tile.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class EditLanguagesPage extends StatefulWidget {
  EditLanguagesPage({Key? key}) : super(key: key);

  @override
  _EditLanguagesPageState createState() => _EditLanguagesPageState();
}

class _EditLanguagesPageState extends State<EditLanguagesPage> {
  final formKey = GlobalKey<FormState>();
  CoolUser? coolUser;
  List<LanguageModel> languagesList = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, userState) {
        coolUser = Getters.getCurrentUser(context);
        if (coolUser!.studentProfileModel != null) {
          languagesList =
              coolUser!.studentProfileModel!.languagesModel?.values.toList() ??
                  [];
        }
        return BlocConsumer<LanguagesBloc, LanguagesState>(
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
                    text: "Edit Languages",
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
                            itemCount: languagesList.length,
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
                                      .read<LanguagesBloc>()
                                      .add(LanguagesEvent.delete(
                                          model: languagesList[index],
                                          onDelete: () {
                                            final user = userState.coolUser!;
                                            final languagesMapUpdated =
                                                Map<String, LanguageModel>.from(
                                                    user.studentProfileModel!
                                                        .languagesModel!);
                                            languagesMapUpdated.remove(
                                                languagesList[index].id);
                                            user.studentProfileModel!
                                                    .languagesModel =
                                                languagesMapUpdated;
                                            context
                                                .read<AuthenticationBloc>()
                                                .add(AuthenticationEvent
                                                    .userModified(user: user));
                                          }));
                                },
                                isVisible:
                                    languagesList[index].isVisible ?? true,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: LanguageTile(
                                    languageModel: languagesList[index],
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
                          return const AddLanguageWidget();
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
    final LanguageModel model =
        LanguageModel.fromMap(languagesList[index].toMap());
    model.isVisible = !(model.isVisible ?? true);
    context.read<LanguagesBloc>().add(LanguagesEvent.changeLanguageVisibility(
          onChange: () {
            final user = Getters.getCurrentUser(context);
            user.studentProfileModel!.languagesModel!
                .update(languagesList[index].id!, (_) => model);
            context
                .read<AuthenticationBloc>()
                .add(AuthenticationEvent.userModified(user: user));
          },
          languageModel: model,
        ));
  }
}
