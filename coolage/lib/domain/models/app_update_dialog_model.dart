class AppUpdateDialogModel {
  String? title;
  String? subtitle;
  List<String>? pointsList;
  bool? isRecurring;
  int? recurringInDays;
  String? appVersion;
  int? buildNumber;
  AppUpdateDialogModel({
    this.title,
    this.subtitle,
    this.pointsList,
    this.appVersion,
    this.buildNumber,
    this.isRecurring,
    this.recurringInDays,
  });

  factory AppUpdateDialogModel.fromMap(Map<String, dynamic> map) {
    return AppUpdateDialogModel(
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      pointsList: List<String>.from(
        (map['pointsList'] as List).map((e) => e as String),
      ),
      isRecurring: map['isRecurring'] as bool,
      recurringInDays: int.parse(map['recurringInDays']?.toString() ?? '0'),
      appVersion: map['appVersion'] as String,
      buildNumber: int.parse(map['buildNumber']?.toString() ?? '0'),
    );
  }
}
