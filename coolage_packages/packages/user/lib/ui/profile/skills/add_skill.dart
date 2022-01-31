import 'package:core/domain/helpers/skills_list.dart';
import 'package:user/application/profile/skills/skills_bloc.dart';
import 'package:user/ui/profile/widgets/add_profile_header.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class AddSkillWidget extends StatefulWidget {
  const AddSkillWidget({
    Key? key,
  }) : super(key: key);

  @override
  _AddSkillWidgetState createState() => _AddSkillWidgetState();
}

class _AddSkillWidgetState extends State<AddSkillWidget> {
  final searchTEC = TextEditingController();
  String searchQuery = "";

  bool isEditingMode = false;
  final formKey = GlobalKey<FormState>();
  Map<String, SkillsModel> skillsMap = {};

  List<String> selectedskillsList = [];
  DateTime? startDate;
  DateTime? endDate;

  bool isEdit = false;

  @override
  void initState() {
    super.initState();

    skillsMap = context
            .read<AuthenticationBloc>()
            .state
            .coolUser
            ?.studentProfileModel
            ?.skillsModel ??
        {};
    selectedskillsList = getSelectedSkillsList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SkillsBloc, SkillsState>(
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
        return SafeArea(
          child: Container(
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
                    isSavingLoading: state.isLoading,
                    title: isEdit ? "Edit Skill" : "Add Skill",
                    isEditingMode: isEditingMode,
                    onSaveTap: () {
                      context.read<SkillsBloc>().add(
                            SkillsEvent.addSkill(
                              onAdd: () {
                                final user = Getters.getCurrentUser(context);
                                user.studentProfileModel!.skillsModel =
                                    getSkillsMapToSave();
                                context.read<AuthenticationBloc>().add(
                                    AuthenticationEvent.userModified(
                                        user: user));
                              },
                              skillsMap: getSkillsMapToSave(),
                            ),
                          );
                    },
                  ),
                  searchWidget(),
                  Container(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.35),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.builder(
                        itemCount: getFilteredList().length,
                        itemBuilder: (context, index) {
                          final tag = getFilteredList()[index];
                          return SelectedTile(
                              text: getFilteredList()[index],
                              isSelected: selectedskillsList.contains(tag),
                              onTap: () {
                                if (selectedskillsList.length >= 10) {
                                  Fluttertoast.showToast(
                                      msg: "Can't add more than 10 skills");
                                  return;
                                }
                                if (!selectedskillsList.contains(tag)) {
                                  setState(() {
                                    selectedskillsList.add(tag);
                                    isEditingMode = true;
                                  });
                                } else {
                                  setState(() {
                                    selectedskillsList.remove(tag);
                                    isEditingMode = true;
                                  });
                                }
                              });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget searchWidget() {
    return Container(
      color: Kolors.greyWhite,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              // boxShadow: Styles.boxShadow(),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/icons/search.png',
                    height: 20,
                    width: 20,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 1,
                  height: 26,
                  color: Kolors.greyLightBlue,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    controller: searchTEC,
                    decoration: InputDecoration(
                      hintText: "Search here",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: Fonts.CONTENT_FONT,
                        color: Kolors.greyBlue.withOpacity(0.5),
                        fontSize: 16,
                      ),
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: Fonts.CONTENT_FONT,
                      color: Kolors.greyBlack,
                      fontSize: 16,
                    ),
                    autofocus: true,
                    onChanged: (query) => updateSearchQuery(),
                  ),
                ),
                if (searchTEC.text.isNotEmpty)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        searchQuery = "";
                        searchTEC.text = "";
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Image.asset(
                        'assets/icons/cancel.png',
                        height: 14,
                        width: 14,
                        color: Kolors.greyBlue,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  void updateSearchQuery() {
    setState(() {
      searchQuery = searchTEC.text;
    });
  }

  List<String> getSelectedSkillsList() {
    final List<String> skillsList = [];
    final list = skillsMap.values.toList();
    for (final skillModel in list) {
      skillsList.add(skillModel.skill!);
    }
    return skillsList;
  }

  List<String> getFilteredList() {
    List<String> filteredItems = [];

    for (var element in SkillsList.getSkillsList()) {
      if (element.toLowerCase().contains(searchQuery)) {
        filteredItems.add(element);
      }
    }
    if (searchQuery.isNotEmpty) {
      filteredItems.add(searchQuery);
    }
    return filteredItems;
  }

  Map<String, SkillsModel> getSkillsMapToSave() {
    final Map<String, SkillsModel> updatedSkillsMap = {};
    for (final skill in selectedskillsList) {
      final skillId = Functions.getIdForSkillValue(skill);
      if (skillsMap.containsKey(skillId)) {
        final model = skillsMap[skill];
        updatedSkillsMap.putIfAbsent(
          skillId,
          () => model!,
        );
      } else {
        updatedSkillsMap.putIfAbsent(
          skillId,
          () => SkillsModel(
            skill: skill,
            id: skillId,
            isVisible: true,
          ),
        );
      }
    }
    return updatedSkillsMap;
  }
}
