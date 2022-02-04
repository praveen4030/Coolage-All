part of core;

mixin Functions {
  static String getDate(Timestamp timestamp) {
    DateTime date = timestamp.toDate();
    int day = date.day;
    int month = date.month;
    int year = date.year;
    String monthStr = '';
    if (month == 1) {
      monthStr = "January";
    } else if (month == 2) {
      monthStr = "February";
    } else if (month == 3) {
      monthStr = "March";
    } else if (month == 4) {
      monthStr = "April";
    } else if (month == 5) {
      monthStr = "May";
    } else if (month == 6) {
      monthStr = "June";
    } else if (month == 7) {
      monthStr = "July";
    } else if (month == 8) {
      monthStr = "August";
    } else if (month == 9) {
      monthStr = "September";
    } else if (month == 10) {
      monthStr = "October";
    } else if (month == 11) {
      monthStr = "November";
    } else if (month == 12) {
      monthStr = "December";
    }
    return '$day $monthStr $year';
  }

  static String getShortDate(Timestamp timestamp) {
    DateTime date = timestamp.toDate();
    int day = date.day;
    int month = date.month;
    int year = date.year;
    String monthStr = '';
    if (month == 1) {
      monthStr = "Jan";
    } else if (month == 2) {
      monthStr = "Feb";
    } else if (month == 3) {
      monthStr = "Mar";
    } else if (month == 4) {
      monthStr = "Apr";
    } else if (month == 5) {
      monthStr = "May";
    } else if (month == 6) {
      monthStr = "June";
    } else if (month == 7) {
      monthStr = "July";
    } else if (month == 8) {
      monthStr = "Aug";
    } else if (month == 9) {
      monthStr = "Sept";
    } else if (month == 10) {
      monthStr = "Oct";
    } else if (month == 11) {
      monthStr = "Nov";
    } else if (month == 12) {
      monthStr = "Dec";
    }
    return '$day $monthStr $year';
  }

  static String getSubdetailString(CoolUser coolUser) {
    String s = "";
    if (coolUser.degree?.isNotEmpty ?? false) {
      s += coolUser.degree!;
    }
    if (coolUser.year?.isNotEmpty ?? false) {
      s += '${Functions.getWithSuffix(int.parse(coolUser.year!))} year';
    }
    return s;
  }

  static Timestamp convertTimeOfDayToTimestamp(TimeOfDay? timeOfDay) {
    return Timestamp.fromDate(
        DateTime(2021, 01, 01, timeOfDay?.hour ?? 0, timeOfDay?.minute ?? 0));
  }

  static TimeOfDay convertTimestampToTimeOfDay(Timestamp? timestamp) {
    DateTime dt = timestamp?.toDate() ?? DateTime(2021, 01, 01, 0, 0);
    return TimeOfDay(hour: dt.hour, minute: dt.minute);
  }

  // ignore: avoid_void_async
  static void launchURL(String? url) async {
    if (url != null) {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        Fluttertoast.showToast(msg: 'Sorry, we could not found a valid url!');
        throw 'Could not launch $url';
      }
    } else {
      Fluttertoast.showToast(
          msg: "Sorry, there is no url available currently!");
    }
  }

  static String getChatRoomId(String a, String b) {
    if (a.compareTo(b) > 0) {
      return "$b\_$a";
    } else {
      return "$a\_$b";
    }
  }

  static String getDateAndTime(Timestamp timestamp) {
    final DateTime startDate = timestamp.toDate();
    return intl.DateFormat("h:mm a").format(startDate);
  }

  static bool validatePhoneNo(String no) {
    return RegExp(r"(^(?:[+0]9)?[0-9]{10,12}$)").hasMatch(no.trim());
  }

  static bool validateEmailID(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email.trim());
  }

  static bool validateCoordinates(String val) {
    return RegExp(
            r"^[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?),\s*[-+]?(180(\.0+)?|((1[0-7]\d)|([1-9]?\d))(\.\d+)?)$")
        .hasMatch(val.trim());
  }

  static String getFeedIcon(String category) {
    if (category == Constants.NOTICE) {
      return 'notice';
    } else if (category == Constants.SEMINAR) {
      return 'seminar';
    } else if (category == Constants.ACADEMICS) {
      return 'academics';
    } else if (category == Constants.SPORTS) {
      return 'sports';
    } else if (category == Constants.CLUBS) {
      return 'clubs';
    } else if (category == Constants.PLACEMENT_INTERNSHIPS) {
      return 'placement';
    } else if (category == Constants.OTHERS) {
      return 'others';
    }
    return '';
  }

  static List<String> getFeedCategories() {
    return [
      Constants.NOTICE,
      Constants.SEMINAR,
      Constants.ACADEMICS,
      Constants.SPORTS,
      Constants.CLUBS,
      Constants.PLACEMENT_INTERNSHIPS,
      Constants.OTHERS,
    ];
  }

  static String getWithSuffix(int number) {
    if (number == 1) {
      return "1st";
    } else if (number == 2) {
      return "2nd";
    } else if (number == 3) {
      return "3rd";
    } else if (number == 4) {
      return "4th";
    } else if (number == 5) {
      return "6th";
    } else if (number > 5) {
      return "${number}th";
    } else {
      return "$number";
    }
  }

  static List<String> getUserCollegeDegrees(BuildContext context) {
    final programmes = CollegeGetters.getCurrentUserCollegeProgrammes(context);
    final List<String> degreesList = [];
    degreesList.addAll(programmes[Constants.UG_GROUP]!);
    degreesList.addAll(programmes[Constants.PG_GROUP]!);
    degreesList.add(Constants.PHD_GROUP);
    return degreesList;
  }

  static List<String> getYearsList(BuildContext context, String? degree) {
    if (degree?.isEmpty ?? true) return [];
    String program = getProgramFromDegree(context, degree!);
    final programsWithYears = CoreGetters.getProgrammes(context);
    final map = programsWithYears[program];
    if (map == null) return [];
    final year = map[degree];
    return yearsStr(year ?? 0);
  }

  static List<String> yearsStr(int year) {
    final List<String> list = [];
    for (int i = 1; i <= year; i++) {
      list.add("${getWithSuffix(i)} year");
    }
    return list;
  }

  static String getProgramFromDegree(BuildContext context, String degree) {
    final programmes = CollegeGetters.getCurrentUserCollegeProgrammes(context);
    String program = "";

    programmes.forEach((key, value) {
      if (value.contains(degree)) {
        program = key;
      }
    });
    return program;
  }

  static Map<String, String> socialMediaIconsNameMap() {
    return {
      "Behance": "behance",
      "Dribble": "dribble",
      "Facebook": "facebook",
      "Github": "github",
      "Instagram": "instagram",
      "LinkedIn": "linkedin",
      "Pinterest": "pinterest",
      "Personal Website": "portfolio",
      "Redit": "redit",
      "Spotify": "spotify",
      "Twitter": "twitter",
      "You Tube": "youtube",
    };
  }

  static String getDegreeFromDegreeYearGroup(String group) {
    final intInStr = RegExp(r'\d+');
    int index = group.indexOf(intInStr);
    String yearStr = group.substring(index, index + 1);
    final degree = group.split(yearStr)[0];
    return degree.trim();
  }

  static String getYearFromDegreeYearGroup(String group) {
    final intInStr = RegExp(r'\d+');
    int index = group.indexOf(intInStr);
    return group.substring(index, index + 1);
  }

  static List<String> getDegreeYearGroups(BuildContext context) {
    final programmesMap =
        CollegeGetters.getCurrentUserCollegeProgrammes(context);
    final programmesWithDuration = CoreGetters.getProgrammes(context);
    final List<String> groups = [];
    final programsList = programmesMap.keys.toList();
    for (final program in programsList) {
      final degreesList = programmesMap[program];
      for (var degree in degreesList!) {
        int duration = programmesWithDuration[program]![degree] ?? 0;
        for (int i = 1; i <= duration; i++) {
          String s = Functions.getWithSuffix(i);
          s = "$degree $s Year";
          groups.add(s);
        }
      }
    }
    if (programmesMap.containsKey(Constants.PHD_GROUP)) {
      groups.add(Constants.PHD_GROUP);
    }

    return groups;
  }

  static List<String> getDepartmentDegreeYearGroups(
      List<String> departmentDegrees, BuildContext context) {
    final programmesMap =
        CollegeGetters.getCurrentUserCollegeProgrammes(context);
    final programmesWithDuration = CoreGetters.getProgrammes(context);
    final List<String> groups = [];
    final programsList = programmesMap.keys.toList();
    for (final program in programsList) {
      final degreesList = programmesMap[program];
      for (var degree in degreesList!) {
        if (departmentDegrees.contains(degree)) {
          int duration = programmesWithDuration[program]![degree] ?? 0;
          for (int i = 1; i <= duration; i++) {
            String s = Functions.getWithSuffix(i);
            s = "$degree $s Year";
            groups.add(s);
          }
        }
      }
    }

    if (departmentDegrees.contains(Constants.PHD_GROUP) &&
        programmesMap.containsKey(Constants.PHD_GROUP)) {
      groups.add(Constants.PHD_GROUP);
    }

    return groups;
  }

  static String getHiddenPhoneNo(String phoneNo) {
    if (phoneNo.length > 5) {
      int length = phoneNo.length;
      String s = phoneNo.substring(0, 3);
      String s1 = "";
      int charNo = length - 5;
      for (int i = 1; i <= charNo; i++) {
        s1 += "*";
      }
      String s2 = phoneNo.substring(length - 2);
      return s + s1 + s2;
    }
    return phoneNo;
  }

  static bool isPasswordCompliant(String password, [int minLength = 8]) {
    if (password.isEmpty) {
      return false;
    }

    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasDigits = password.contains(RegExp(r'[0-9]'));
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    bool hasSpecialCharacters =
        password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasMinLength = password.length >= minLength;

    return hasDigits &
        hasUppercase &
        hasLowercase &
        hasSpecialCharacters &
        hasMinLength;
  }

  static bool checkIfDomainMatchesWithCollege(
      String email, BuildContext context, String college) {
    final domain = getDomainFromCollege(context, college);
    final list = email.split("@");
    if (list.isEmpty) {
      return false;
    }
    final String domainEnd = email.split("@").last;
    if ("@$domainEnd" == domain) {
      return true;
    } else {
      return false;
    }
  }

  static String? getDomainFromCollege(BuildContext context, String college) {
    final model = context.read<CoolageDetailsBloc>().state.coolageDetailsModel;
    if (model == null) {
      return null;
    }
    String? domain;

    for (var model in model.onboardedCollegesList!) {
      if (model.college == college) {
        domain = model.domain!;
        break;
      }
    }
    return domain;
  }

  static List<String> getCollegesList(BuildContext context) {
    final model = context.read<CoolageDetailsBloc>().state.coolageDetailsModel;
    if (model == null) {
      return [];
    }
    final List<String> list = [];
    model.onboardedCollegesList!.forEach((model) {
      list.add(model.college!);
    });
    //TODO remove this later
    if (list.isEmpty) {
      list.add("NIT Jalandhar");
    }
    return list;
  }

  static List<String> getBatchFinishList(String batchStart) {
    final List<String> list = [];
    int batchStartInt = int.parse(batchStart);
    for (int i = batchStartInt; i < batchStartInt + 10; i++) {
      list.add(i.toString());
    }
    return list;
  }

  static List<String> getBatchStartList() {
    final List<String> list = [];
    final dateTime = DateTime.now();
    for (int i = dateTime.year; i > 1930; i--) {
      list.add(i.toString());
    }
    return list;
  }

  static String getIdForSkillValue(String skill) {
    String text = "r'$skill";
    final result = skill.replaceAll(RegExp('[^A-Za-z0-9]'), '');
    return result;
  }

  static String getCategoryIconUrl(String category) {
    if (Constants.NOTICE == category) {
      return 'https://firebasestorage.googleapis.com/v0/b/coolageapp.appspot.com/o/Feed%20Icon%2Fnotice.png?alt=media&token=0fffec36-614d-4718-ba2c-feebac657b50';
    } else if (Constants.SEMINAR == category) {
      return 'https://firebasestorage.googleapis.com/v0/b/coolageapp.appspot.com/o/Feed%20Icon%2Fseminar.png?alt=media&token=fc82df5e-abe7-4d8a-a42c-e0736c635903';
    } else if (Constants.ACADEMICS == category) {
      return 'https://firebasestorage.googleapis.com/v0/b/coolageapp.appspot.com/o/Feed%20Icon%2Facademics.png?alt=media&token=9a722257-335d-45f8-93c3-4402b71382ae';
    } else if (Constants.SPORTS == category) {
      return 'https://firebasestorage.googleapis.com/v0/b/coolageapp.appspot.com/o/Feed%20Icon%2Fsports.png?alt=media&token=92970769-acda-484b-bcf5-c0c0f2400b83';
    } else if (Constants.CLUBS == category) {
      return 'https://firebasestorage.googleapis.com/v0/b/coolageapp.appspot.com/o/Feed%20Icon%2Fclubs.png?alt=media&token=2d92bddb-46df-468c-9b47-e686cb84d399';
    } else if (Constants.PLACEMENT_INTERNSHIPS == category) {
      return 'https://firebasestorage.googleapis.com/v0/b/coolageapp.appspot.com/o/Feed%20Icon%2Fplacement%20internship.png?alt=media&token=e1816317-b1b8-4e2e-83fe-4f7057e78b60';
    } else {
      return 'https://firebasestorage.googleapis.com/v0/b/coolageapp.appspot.com/o/Feed%20Icon%2Fothers.png?alt=media&token=4d131151-f9d3-4df9-b0cf-f0cb32f6ba22';
    }
  }
}
