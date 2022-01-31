import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/achievements/achievements_list_tile.dart';
import 'package:user/ui/profile/campus_pors/campus_pors_list_tile.dart';
import 'package:user/ui/profile/education_details/education_details_list_tile.dart';
import 'package:user/ui/profile/general_details/general_details_tile.dart';
import 'package:user/ui/profile/languages/language_list_tile.dart';
import 'package:user/ui/profile/projects/projects_list_tile.dart';
import 'package:user/ui/profile/skills/skills_list_tile.dart';
import 'package:user/ui/profile/profile_header/user_profile_header.dart';
import 'package:user/ui/profile/work_experience/work_experience_list_tile.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/user.dart';

class UserProfilePage extends StatefulWidget {
  final CoolUser coolUser;
  const UserProfilePage({
    Key? key,
    required this.coolUser,
  }) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  void initState() {
    super.initState();
    context.read<UserDetailsBloc>().add(UserDetailsEvent.setCurrentUserDetails(
          isCurrentUser: Getters.getCurrentUserUid() == widget.coolUser.uid,
          model: widget.coolUser,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, authState) {
        return BlocBuilder<UserDetailsBloc, UserDetailsState>(
          builder: (context, state) {
            if (state.coolUser == CoolUser.empty() ||
                state.coolUser.uid == null) {
              return Container();
            }
            final coolUser = Getters.getCurrentUserUid() == widget.coolUser.uid
                ? authState.coolUser!
                : state.coolUser;
            final studentProfileModel =
                coolUser.studentProfileModel ?? StudentProfileModel.empty();
            return Scaffold(
              backgroundColor: Kolors.greyWhite,
              appBar: AppBar(
                toolbarHeight: 0,
              ),
              body: ListView(
                children: [
                  UserProfileHeaderWidget(
                    coolUser: coolUser,
                  ),
                  GeneralDetailsTile(
                    generalDetailsModel:
                        studentProfileModel.generalDetailsModel!,
                  ),
                  AchievementsListTile(
                      list: studentProfileModel.achievementsModel?.values
                          .toList()),
                  WorkExperienceListTile(
                      list: studentProfileModel.workExperienceModel?.values
                          .toList()),
                  CampusPorsListTile(
                    list: studentProfileModel.campusPorsModel?.values.toList(),
                  ),
                  ProjectsListTile(
                    list: studentProfileModel.projectsModel?.values.toList(),
                  ),
                  EducationDetailsListTile(
                      list: studentProfileModel.educationDetailsModel?.values
                          .toList()),
                  SkillsListTile(
                      list: studentProfileModel.skillsModel?.values.toList()),
                  LanguagesListTile(
                      list:
                          studentProfileModel.languagesModel?.values.toList()),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

dynamic saveUser(BuildContext context) async {
  final userModel = Getters.getCurrentUser(context);
  userModel.imageUrl =
      "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80";
  userModel.degree = "B.Tech";
  userModel.year = "4";
  userModel.college = "NIT Jalandhar";
  userModel.branch = "Instrumentation and Control Engineering";
  userModel.bio = "Developer by profession ,\n JAWAHARWASI by heart ";
  userModel.studentProfileModel = studentProfileModel;
  final map = await userModel.toMap();
  debugPrint(map.toString());
  await FirebaseFirestore.instance.usersCollection
      .doc(Getters.getCurrentUserUid())
      .update(map);
}

final studentProfileModel = StudentProfileModel(
  achievementsModel: {
    'dvdv':
        AchievementsModel(achievement: "GRIHA Citation 2020", isVisible: false),
    'skfn': AchievementsModel(
        achievement: "UCEED All India Rank - 433", isVisible: true),
    'svlk': AchievementsModel(
        achievement: "SDS Hackthon 2019 shortlisted", isVisible: false),
  },
  skillsModel: {
    'dvdv': SkillsModel(
      skill: "Computer Languages ",
      isVisible: true,
      id: "dvdv",
    ),
    'dvdscv': SkillsModel(
      skill: "Computer wsc ",
      isVisible: true,
      id: "dvdscv",
    ),
  },
  educationDetailsModel: {
    'sewfjoi': EducationDetailsModel(
      completionDate: Timestamp.now(),
      degree: 'Matriculate (Class X)',
      stream: 'P.C.M. with Computers',
      institute: 'Campion School, Bhopal',
      performance: 'CGPA - 8.8',
      isVisible: false,
    ),
    'skvnsoiv': EducationDetailsModel(
      completionDate: Timestamp.now(),
      degree: 'Intermidiate (Class XII)',
      stream: 'P.C.M. with Computers',
      institute: 'Campion School, Bhopal',
      performance: 'Persentage - 88%',
      isVisible: false,
    ),
  },
  campusPorsModel: {
    "scsscsfw": CampusPorsModel(
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
      title: 'Design Head',
      organisation: 'Curious Columns',
      startFrom: Timestamp.now(),
      endAt: Timestamp.now(),
      isVisible: false,
    ),
    "sfojw0o9f": CampusPorsModel(
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
      title: 'Event Manager',
      organisation: 'Thomso 2020',
      startFrom: Timestamp.now(),
      endAt: Timestamp.now(),
      isVisible: true,
    ),
  },
  projectsModel: {
    "scsfwf": ProjectsModel(
      title: 'Gauhar Mahal Documentation',
      field: 'Measure Drawing',
      organisation: 'IIT Roorkee',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
      isVisible: false,
      completionDate: Timestamp.now(),
    ),
    "asdcwpo": ProjectsModel(
      title: 'Science City, Dehradun',
      field: 'Architectural Thesis',
      organisation: 'IIT Roorkee',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
      isVisible: true,
      completionDate: Timestamp.now(),
    ),
  },
  workExperienceModel: {
    "wopkf0w": WorkExperienceModel(
      description:
          "Worked as a front-end developer for my friends who are working on breaking the fourth wall with this prototype. Its a work from nowhere project, and I was handsomely compensated with fresh green pot and lots of love.  Cheers !",
      title: "Content Developer",
      organisation: "Jarvis Drones Pvt. Ltd. ",
      type: "Volunteering",
      durationFrom: Timestamp.now(),
      durationTill: Timestamp.now(),
      isVisible: true,
    ),
    "adojwod": WorkExperienceModel(
      description:
          "Worked as a front-end developer for my friends who are working on breaking the fourth wall with this prototype. Its a work from nowhere project, and I was handsomely compensated with fresh green pot and lots of love.  Cheers !",
      title: "Software Developer",
      organisation: "Coolage Software Solutions",
      type: "Job",
      durationFrom: Timestamp.now(),
      durationTill: Timestamp.now(),
      isVisible: false,
    ),
    "wodjw0ocm": WorkExperienceModel(
      description:
          "Worked as a front-end developer for my friends who are working on breaking the fourth wall with this prototype. Its a work from nowhere project, and I was handsomely compensated with fresh green pot and lots of love.  Cheers !",
      title: "Frontend Developer",
      organisation: "Goldman Sachs",
      type: "Internship",
      durationFrom: Timestamp.now(),
      durationTill: Timestamp.now(),
      isVisible: false,
    ),
  },
  generalDetailsModel: GeneralDetailsModel(
    addressModel: AddressModel(
      addressLine1: "Room no 309 MBH F",
      addressLine2: "NITJ",
      isVisible: true,
    ),
    dob: TimestampVisible(
      timestamp: Timestamp.now(),
      isVisible: true,
    ),
    sex: StringVisible(
      data: "Male",
      isVisible: true,
    ),
    pronoun: StringVisible(
      data: "He/him/his",
      isVisible: true,
    ),
    impairment: StringVisible(
      data: "Mentally Retarded",
      isVisible: true,
    ),
    enrollmentNo: StringVisible(
      data: "18106059",
      isVisible: true,
    ),
    emailId: StringVisible(
      data: "praveen4030@gmail.com",
      isVisible: true,
    ),
    nationality: StringVisible(
      data: "Indian",
      isVisible: false,
    ),
    category: StringVisible(
      data: "General",
      isVisible: false,
    ),
  ),
);
