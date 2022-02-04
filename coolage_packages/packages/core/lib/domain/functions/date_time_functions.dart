part of core;

mixin DateTimeFunctions {
  static String getFullDate(DateTime dateTime) {
    DateTime date = dateTime;
    int day = date.day;
    int month = date.month;
    int year = date.year;
    String timing = intl.DateFormat('h:mm a').format(dateTime);
    String monthStr = '';
    monthStr = getMonthNameShort(month);
    return '$day $monthStr, $year ; $timing';
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


  static String getMonthNameShort(int month) {
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
      monthStr = "Jun";
    } else if (month == 7) {
      monthStr = "Jul";
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
    return monthStr;
  }
}
