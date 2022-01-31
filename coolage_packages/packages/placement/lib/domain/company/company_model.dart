import 'package:placement/domain/company/candidate_applied_model.dart';
import 'package:placement/domain/company/package_model.dart';

class CompanyModel {
  String name;
  String companyWebsiteUrl;
  String organisationType;
  String industrySector;
  String aboutCompany;
  List<String> rolesOpen;
  DateTime openTill;
  List<String> batchedAllowed;
  double applicationCost;

  //intern job volunteer
  List<String> recruitmentRoles;
  String duration;
  String postingLocation;
  DateTime? joiningDate;
  String jobDescription;

  double minCGPA;
  double minTenPercentage;
  double minTwelvePercentage;
  String medicalRequirements;
  String serviceAgreement;
  String serviceAgreementDuration;
  String otherEligibility;
  List<String> openForBranches;
  bool cgpaRequirement;
  bool isCoverLetterRequired;
  bool isPPTPresenceRequired;

  //package
  PackageModel packageModel;
  String companyAccomodation;
  String otherFacility;

  //recruitment
  DateTime? pptPresentationTime;
  DateTime? aptitudeTestTime;
  DateTime? technicalExamTime;
  DateTime? interviewTime;
  DateTime? hrInterviewTime;

  //candidates
  List<CandidateAppliedModel> candidatesApplied;
  CompanyModel({
    required this.name,
    this.companyWebsiteUrl = "NA",
    this.organisationType = "NA",
    this.industrySector = "NA",
    this.aboutCompany = "NA",
    required this.rolesOpen,
    required this.openTill,
    required this.batchedAllowed,
    this.applicationCost = 0,
    required this.recruitmentRoles,
    this.duration = "NA",
    this.postingLocation = "NA",
    this.joiningDate,
    this.jobDescription = "NA",
    this.minCGPA = 0,
    this.minTenPercentage = 0,
    this.minTwelvePercentage = 0,
    this.medicalRequirements = "NA",
    this.serviceAgreement = "NA",
    this.serviceAgreementDuration = "NA",
    this.otherEligibility = "NA",
    required this.openForBranches,
    this.cgpaRequirement = false,
    this.isCoverLetterRequired = false,
    this.isPPTPresenceRequired = false,
    required this.packageModel,
    this.companyAccomodation = "NA",
    this.otherFacility = "NA",
    this.pptPresentationTime,
    this.aptitudeTestTime,
    this.technicalExamTime,
    this.interviewTime,
    this.hrInterviewTime,
    required this.candidatesApplied,
  });
}
