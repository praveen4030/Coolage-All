import 'package:college/application/college_groups/college_groups_bloc.dart';
import 'package:college/ui/widgets/user_member_tile.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/user.dart';

class DepartmentFacultiesPage extends StatefulWidget {
  final String department;
  const DepartmentFacultiesPage({
    Key? key,
    required this.department,
  }) : super(key: key);

  @override
  State<DepartmentFacultiesPage> createState() =>
      _DepartmentFacultiesPageState();
}

class _DepartmentFacultiesPageState extends State<DepartmentFacultiesPage> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        context
            .read<CollegeGroupsBloc>()
            .add(CollegeGroupsEvent.getMoreDepartmentFaculties(
              college: Getters.getCurrentUserCollege(context),
              department: widget.department,
            ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollegeGroupsBloc, CollegeGroupsState>(
      builder: (context, state) {
        return state.isDepartmentFacultiesLoading
            ? const Center(
                child: LogoLoading(),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: state.departmentFacultiesList.length,
                      itemBuilder: (context, index) {
                        return UserMemberTile(
                          coolUser: state.departmentFacultiesList[index],
                          subtitle: state
                                  .departmentFacultiesList[index].designation ??
                              "",
                        );
                      },
                    ),
                  ),
                  if (state.isMoreDepartmentFacultiesLoading)
                    const LogoLoading(),
                ],
              );
      },
    );
  }
}
