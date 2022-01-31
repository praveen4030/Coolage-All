part of user;

mixin Getters {
  static CoolUser getCurrentUser(BuildContext context) {
    return context.read<AuthenticationBloc>().state.coolUser!;
  }

  static String getCurrentUserCollege(BuildContext context) {
    String s = context.read<AuthenticationBloc>().state.coolUser!.college ?? '';
    return s;
  }

  static String getCurrentUserUid() {
    return FirebaseAuth.instance.currentUser?.uid ?? '';
  }

  static bool isUserLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }

  static String getUserPhoneNo() {
    return FirebaseAuth.instance.currentUser!.phoneNumber ?? '';
  }
}
