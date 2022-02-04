import 'package:cloud_firestore/cloud_firestore.dart';

class CandidateAppliedModel {
  String uid;
  String status;
  Timestamp appliedAt;
  String jobPosition;
  String jobType;
  String name;
  String branch;
  String imageUrl;
  CandidateAppliedModel({
    required this.uid,
    required this.status,
    required this.appliedAt,
    required this.jobPosition,
    required this.jobType,
    required this.name,
    required this.branch,
    required this.imageUrl,
  });

  factory CandidateAppliedModel.empty() {
    return CandidateAppliedModel(
      uid: '',
      status: 'Applied',
      appliedAt: Timestamp.now(),
      jobPosition: "SDE 1",
      jobType: "Intern",
      name: "Praveen Agrawal",
      branch: "ICE",
      imageUrl: "",
    );
  }
}
