import 'package:user/application/profile/campus_pors/campus_pors_bloc.dart';
import 'package:user/ui/profile/campus_pors/add_campus_por.dart';
import 'package:user/ui/profile/campus_pors/campus_pors_tile.dart';
import 'package:user/ui/profile/widgets/edit_user_detail_tile.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class EditCampusPorsPage extends StatefulWidget {
  const EditCampusPorsPage({Key? key}) : super(key: key);

  @override
  _EditCampusPorsPageState createState() => _EditCampusPorsPageState();
}

class _EditCampusPorsPageState extends State<EditCampusPorsPage> {
  final formKey = GlobalKey<FormState>();
  CoolUser? coolUser;
  List<CampusPorsModel> campusPorsList = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, userState) {
        coolUser = Getters.getCurrentUser(context);
        if (coolUser!.studentProfileModel != null) {
          campusPorsList =
              coolUser!.studentProfileModel!.campusPorsModel?.values.toList() ??
                  [];
        }
        return BlocConsumer<CampusPorsBloc, CampusPorsState>(
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
                    text: "Edit Campus PORs",
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
                            itemCount: campusPorsList.length,
                            itemBuilder: (context, index) {
                              return EditUserDetailTile(
                                isDeleteLoading: state.isDeleteLoading,
                                onEyeTap: () {
                                  final CampusPorsModel model =
                                      CampusPorsModel.fromMap(
                                          campusPorsList[index].toMap());
                                  model.isVisible = !(model.isVisible ?? false);
                                  context
                                      .read<CampusPorsBloc>()
                                      .add(CampusPorsEvent.addCampusPor(
                                        onAdd: (CampusPorsModel model) {
                                          final user =
                                              Getters.getCurrentUser(context);
                                          user.studentProfileModel!
                                              .campusPorsModel!
                                              .update(campusPorsList[index].id!,
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
                                        return AddCampusPorWidget(
                                          campusPorsModel:
                                              campusPorsList[index],
                                        );
                                      }).then((_) {
                                    setState(() {});
                                  });
                                },
                                onDeleteTap: () {
                                  context
                                      .read<CampusPorsBloc>()
                                      .add(CampusPorsEvent.delete(
                                          model: campusPorsList[index],
                                          index: index,
                                          onDelete: () {
                                            final user = userState.coolUser!;
                                            user.studentProfileModel!
                                                .campusPorsModel!
                                                .remove(
                                                    campusPorsList[index].id);
                                            context
                                                .read<AuthenticationBloc>()
                                                .add(AuthenticationEvent
                                                    .userModified(user: user));
                                          }));
                                },
                                isVisible:
                                    campusPorsList[index].isVisible ?? true,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: CampusPorsTile(
                                    campusPorsModel: campusPorsList[index],
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
                          return const AddCampusPorWidget();
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
