import 'package:user/application/profile/education_details/education_details_bloc.dart';
import 'package:user/ui/profile/education_details/add_education_detail.dart';
import 'package:user/ui/profile/education_details/education_detail_tile.dart';
import 'package:user/ui/profile/widgets/edit_user_detail_tile.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class EditEducationDetailsPage extends StatefulWidget {
  const EditEducationDetailsPage({Key? key}) : super(key: key);

  @override
  _EditEducationDetailsPageState createState() =>
      _EditEducationDetailsPageState();
}

class _EditEducationDetailsPageState extends State<EditEducationDetailsPage> {
  final formKey = GlobalKey<FormState>();
  CoolUser? coolUser;
  List<EducationDetailsModel> educationDetailsList = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, userState) {
        coolUser = Getters.getCurrentUser(context);
        if (coolUser!.studentProfileModel != null) {
          educationDetailsList = coolUser!
                  .studentProfileModel!.educationDetailsModel?.values
                  .toList() ??
              [];
        }
        return BlocConsumer<EducationDetailsBloc, EducationDetailsState>(
          listener: (context, state) {},
          builder: (context, state) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: Kolors.greyWhite,
                appBar: const PreferredSize(
                  preferredSize: const Size.fromHeight(80),
                  child: CoolageAppBar(
                    isCenter: true,
                    actions: [],
                    text: "Edit Education",
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
                            itemCount: educationDetailsList.length,
                            itemBuilder: (context, index) {
                              return EditUserDetailTile(
                                isDeleteLoading: state.isDeleteLoading,
                                onEyeTap: () {
                                  final EducationDetailsModel model =
                                      EducationDetailsModel.fromMap(
                                          educationDetailsList[index].toMap());
                                  model.isVisible = !(model.isVisible ?? false);
                                  context.read<EducationDetailsBloc>().add(
                                          EducationDetailsEvent
                                              .addEducationDetails(
                                        onAdd: (EducationDetailsModel model) {
                                          final user =
                                              Getters.getCurrentUser(context);
                                          user.studentProfileModel!
                                              .educationDetailsModel!
                                              .update(
                                                  educationDetailsList[index]
                                                      .id!,
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
                                        return AddEducationDetailWidget(
                                            model: educationDetailsList[index]);
                                      });
                                },
                                onDeleteTap: () {
                                  context
                                      .read<EducationDetailsBloc>()
                                      .add(EducationDetailsEvent.delete(
                                          model: educationDetailsList[index],
                                          index: index,
                                          onDelete: () {
                                            final user = userState.coolUser!;
                                            user.studentProfileModel!
                                                .educationDetailsModel!
                                                .remove(
                                                    educationDetailsList[index]
                                                        .id);
                                            context
                                                .read<AuthenticationBloc>()
                                                .add(AuthenticationEvent
                                                    .userModified(user: user));
                                          }));
                                },
                                isVisible:
                                    educationDetailsList[index].isVisible ??
                                        true,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: EducationDetailTile(
                                    educationDetailsModel:
                                        educationDetailsList[index],
                                    isDivider: false,
                                    isShowingVisibleButton: false,
                                  ),
                                ),
                              );
                            },
                          ),
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
                          return const AddEducationDetailWidget();
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
