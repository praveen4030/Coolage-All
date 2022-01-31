part of 'college_bloc.dart';

@freezed
class CollegeEvent with _$CollegeEvent {
  const factory CollegeEvent.getAboutCollege({String? userCollege}) =
      _GetAboutCollege;
  const factory CollegeEvent.getCollegeDetails({String? userCollege}) =
      _GetCollegeDetails;
  const factory CollegeEvent.addCollegeCard(
      {required String userCollege, required File file}) = _AddCollegeCard;
  const factory CollegeEvent.addCollegeImage(
      {required String userCollege, required File file}) = _AddCollegeImage;
  const factory CollegeEvent.deleteCollegeCard(
      {required String userCollege, required Cards cards}) = _DeleteCollegeCard;
  const factory CollegeEvent.deleteCollegeImage(
      {required String userCollege,
      required String image}) = _DeleteCollegeImage;
  const factory CollegeEvent.addOfficialLink({
    @required String? userCollege,
    @required String? title,
    @required String? link,
    @required File? file,
  }) = _AddOfficialLink;
  const factory CollegeEvent.editOfficialLink({
    @required String? userCollege,
    @required OfficialLinks? officialLinks,
    @required int? index,
    File? file,
  }) = _EditOfficialLink;
  const factory CollegeEvent.deleteOfficialLink({
    @required String? userCollege,
    @required OfficialLinks? officialLinks,
    @required int? index,
  }) = _DeleteOfficialLink;
  const factory CollegeEvent.modifyAboutCollege({
    @required String? userCollege,
    String? about,
    String? logoUrl,
    File? file,
  }) = _ModifyAboutCollege;
}
