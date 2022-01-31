import 'package:college/application/college_groups/college_groups_bloc.dart';
import 'package:college/ui/widgets/user_member_tile.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/user.dart';

class GroupMembersPage extends StatefulWidget {
  final String groupName;
  const GroupMembersPage({
    Key? key,
    required this.groupName,
  }) : super(key: key);

  @override
  _GroupMembersPageState createState() => _GroupMembersPageState();
}

class _GroupMembersPageState extends State<GroupMembersPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        context
            .read<CollegeGroupsBloc>()
            .add(CollegeGroupsEvent.getMoreGroupMembers(
              college: Getters.getCurrentUserCollege(context),
              groupName: widget.groupName,
            ));
      }
    });
    super.initState();
    context.read<CollegeGroupsBloc>().add(CollegeGroupsEvent.getGroupMembers(
          college: Getters.getCurrentUserCollege(context),
          groupName: widget.groupName,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollegeGroupsBloc, CollegeGroupsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            appBar: AppBar(
              toolbarHeight: 0,
            ),
            body: Container(
              child: Column(
                children: [
                  Container(
                    height: 80,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconWithWhiteBackground(
                          iconName: 'back',
                          iconColor: Kolors.greyBlue,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: "Members",
                              fontSize: 22,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              text: widget.groupName,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Kolors.greyBlue,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: state.isGroupMembersLoading
                        ? const Center(
                            child: LogoLoading(),
                          )
                        : ListView.builder(
                            controller: _scrollController,
                            itemCount: state.groupMembersList.length,
                            itemBuilder: (context, index) {
                              return UserMemberTile(
                                coolUser: state.groupMembersList[index],
                                subtitle: state
                                        .groupMembersList[index]
                                        .groupsJoined?[widget.groupName]
                                        ?.position ??
                                    "",
                              );
                            },
                          ),
                  ),
                  if (state.isMoreGroupMembersLoading) const LogoLoading(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
