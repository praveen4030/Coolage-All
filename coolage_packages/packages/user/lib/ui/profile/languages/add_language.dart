import 'package:user/application/profile/languages/languages_bloc.dart';
import 'package:user/ui/profile/widgets/add_profile_header.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';
import 'package:core/domain/helpers/languages_list.dart';

class AddLanguageWidget extends StatefulWidget {
  const AddLanguageWidget({
    Key? key,
  }) : super(key: key);

  @override
  _AddLanguageWidgetState createState() => _AddLanguageWidgetState();
}

class _AddLanguageWidgetState extends State<AddLanguageWidget> {
  final searchTEC = TextEditingController();
  String searchQuery = "";

  bool isEditingMode = false;
  final formKey = GlobalKey<FormState>();
  Map<String, LanguageModel> languagesMap = {};

  List<String> selectedLanguagesList = [];
  DateTime? startDate;
  DateTime? endDate;

  bool isEdit = false;

  @override
  void initState() {
    super.initState();

    languagesMap = context
            .read<AuthenticationBloc>()
            .state
            .coolUser
            ?.studentProfileModel
            ?.languagesModel ??
        {};
    selectedLanguagesList = getSelectedLanguagesList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LanguagesBloc, LanguagesState>(
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
                    title: isEdit ? "Edit Language" : "Add Language",
                    isEditingMode: isEditingMode,
                    onSaveTap: () {
                      context.read<LanguagesBloc>().add(
                            LanguagesEvent.addLanguage(
                              onAdd: () {
                                final user = Getters.getCurrentUser(context);
                                user.studentProfileModel!.languagesModel =
                                    getLanguagesMapToSave();
                                context.read<AuthenticationBloc>().add(
                                    AuthenticationEvent.userModified(
                                        user: user));
                              },
                              languagesMap: getLanguagesMapToSave(),
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
                              isSelected: selectedLanguagesList.contains(tag),
                              onTap: () {
                                if (selectedLanguagesList.length >= 4) {
                                  Fluttertoast.showToast(
                                      msg: "Can't add more than 4 languages");
                                  return;
                                }
                                if (!selectedLanguagesList.contains(tag)) {
                                  setState(() {
                                    selectedLanguagesList.add(tag);
                                    isEditingMode = true;
                                  });
                                } else {
                                  setState(() {
                                    selectedLanguagesList.remove(tag);
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

  List<String> getSelectedLanguagesList() {
    final List<String> languagesList = [];
    final list = languagesMap.values.toList();
    for (final languagesModel in list) {
      languagesList.add(languagesModel.language!);
    }
    return languagesList;
  }

  List<String> getFilteredList() {
    List<String> filteredItems = [];

    for (var element in LanguagesList.getLanguagesList()) {
      if (element.toLowerCase().contains(searchQuery)) {
        filteredItems.add(element);
      }
    }
    if (searchQuery.isNotEmpty) {
      filteredItems.add(searchQuery);
    }
    return filteredItems;
  }

  Map<String, LanguageModel> getLanguagesMapToSave() {
    final Map<String, LanguageModel> updatedLanguagesMap = {};
    for (final language in selectedLanguagesList) {
      final languageId = Functions.getIdForSkillValue(language);
      if (languagesMap.containsKey(languageId)) {
        final model = languagesMap[languageId];
        updatedLanguagesMap.putIfAbsent(
          languageId,
          () => model!,
        );
      } else {
        updatedLanguagesMap.putIfAbsent(
          languageId,
          () => LanguageModel(
            language: language,
            id: languageId,
            isVisible: true,
          ),
        );
      }
    }
    return updatedLanguagesMap;
  }
}
