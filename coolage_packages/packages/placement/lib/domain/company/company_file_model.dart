import 'package:cloud_firestore/cloud_firestore.dart';

class CompanyFileModel {
  String fileName;
  String fileLinkView;
  String fileDownloadLink;
  Timestamp uploadTime;
  String uploadedBy;
  CompanyFileModel({
    required this.fileName,
    required this.fileLinkView,
    required this.fileDownloadLink,
    required this.uploadTime,
    required this.uploadedBy,
  });
}
