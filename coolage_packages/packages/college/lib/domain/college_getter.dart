part of college;

mixin CollegeGetters {
  static List<String> getCurrentUserCollegeFeatures(BuildContext context) {
    return context.read<CollegeBloc>().state.collegeModel!.featuresList!;
  }

  static String getCurrentUserCollegeCity(BuildContext context) {
    return context.read<CollegeBloc>().state.collegeModel!.city!;
  }

  static List<String> getCurrentUserCollegeDepartments(BuildContext context) {
    return context.read<CollegeBloc>().state.collegeModel!.departments!;
  }

  static List<String> getCurrentUserCollegeGroups(BuildContext context) {
    return context.read<CollegeBloc>().state.collegeModel!.groups ?? [];
  }

  static Map<String, List<String>> getCurrentUserCollegeProgrammes(
      BuildContext context) {
    return context.read<CollegeBloc>().state.collegeModel!.programmes!;
  }

  static List<String> getCurrentUserCollegeDesignations(BuildContext context) {
    return context.read<CollegeBloc>().state.collegeModel!.designations!;
  }
}
