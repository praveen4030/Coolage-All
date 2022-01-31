part of 'languages_bloc.dart';

@freezed
class LanguagesEvent with _$LanguagesEvent {
  const factory LanguagesEvent.addLanguage({
    required Map<String, LanguageModel> languagesMap,
    required Function onAdd,
  }) = _AddLanguage;

  const factory LanguagesEvent.changeLanguageVisibility({
    required LanguageModel languageModel,
    required Function onChange,
  }) = _ChangeLanguageVisibility;

  const factory LanguagesEvent.delete({
    required LanguageModel model,
    required Function onDelete,
  }) = _Delete;
}
