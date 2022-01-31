import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/languages/add_language.dart';
import 'package:user/ui/profile/languages/edit_languages.dart';
import 'package:user/ui/profile/languages/language_tile.dart';
import 'package:user/ui/profile/widgets/add_button.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:user/ui/profile/widgets/user_profile_tile_header.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

class LanguagesListTile extends StatefulWidget {
  final List<LanguageModel>? list;
  const LanguagesListTile({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  State<LanguagesListTile> createState() => _LanguagesListTileState();
}

class _LanguagesListTileState extends State<LanguagesListTile> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return BlocBuilder<UserDetailsBloc, UserDetailsState>(
          builder: (context, state) {
            if (LanguageModel.noVisibleElementPresentForOtherUser(
                    widget.list ?? []) &&
                !state.isCurrentUser) return Container();
            return UserProfileTileHeader(
              iconName: 'profile/languages',
              text: 'Languages',
              onEditTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                        builder: (context) => EditLanguagesPage()))
                    .then((_) {
                  setState(() {});
                });
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
                        return LanguageTile(
                          languageModel: widget.list![index],
                        );
                      },
                      itemCount: widget.list!.length,
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
                                return const AddLanguageWidget();
                              });
                        },
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
