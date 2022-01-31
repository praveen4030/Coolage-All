import 'package:cloud_firestore/cloud_firestore.dart';

class CandidateAppliedModel {
  String uid;
  String status;
  Timestamp appliedAt;
  String jobPosition;
  String jobType;
  String name;
  String branch;
  CandidateAppliedModel({
    required this.uid,
    required this.status,
    required this.appliedAt,
    required this.jobPosition,
    required this.jobType,
    required this.name,
    required this.branch,
  });
}
