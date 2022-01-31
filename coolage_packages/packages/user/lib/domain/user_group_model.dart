import 'dart:convert';

class UserGroupModel {
  String? groupName;
  String? position;
  UserGroupModel({
    this.groupName,
    this.position,
  });

  UserGroupModel copyWith({
    String? groupName,
    String? position,
  }) {
    return UserGroupModel(
      groupName: groupName ?? this.groupName,
      position: position ?? this.position,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'groupName': groupName,
      'position': position,
    };
  }

  factory UserGroupModel.fromMap(Map<String, dynamic> map) {
    return UserGroupModel(
      groupName: map['groupName'],
      position: map['position'],
    );
  }

  @override
  String toString() =>
      'UserGroupModel(groupName: $groupName, position: $position)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserGroupModel &&
        other.groupName == groupName &&
        other.position == position;
  }

  @override
  int get hashCode => groupName.hashCode ^ position.hashCode;
}
