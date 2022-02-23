part of user;

mixin UserDynamicLinkFunctions {
  static Future<void> redirectToUserProfile(
    String uid,
  ) async {
    if (uid.isEmpty) {
      Fluttertoast.showToast(msg: "Coundn't find this user");
      return;
    }
    final user = await FetchUserDetails.getUserFromUid(uid);
    if (user != null) {
      Navigator.of(CoreGetters.getContext).push(MaterialPageRoute(
          builder: (context) => UserProfilePage(coolUser: user)));
    } else {
      Fluttertoast.showToast(msg: "Coundn't find this user");
    }
  }

  static Future<String?> getUserShareLink(CoolUser coolUser) async {
    try {
      if (coolUser.profileLink?.isNotEmpty ?? false) {
        return coolUser.profileLink!;
      }
      final generatedLink = await createUserDynamicLink(coolUser.uid!);
      if (generatedLink?.isEmpty ?? true) {
        FlushbarHelper.createError(message: "Something went wrong!")
            .show(CoreGetters.getContext);
        return null;
      }
      coolUser.profileLink = generatedLink;
      if (coolUser.uid == Getters.getCurrentUserUid()) {
        CoreGetters.getContext
            .read<AuthenticationBloc>()
            .add(AuthenticationEvent.updateUserDetails(coolUser: coolUser));
      }
      return generatedLink;
    } catch (e) {
      FlushbarHelper.createError(message: "Something went wrong!")
          .show(CoreGetters.getContext);
    }
  }

  static Future<String?> createUserDynamicLink(String uid) async {
    try {
      if (kIsWeb) {
        return '';
      }
      final DynamicLinkParameters parameters = DynamicLinkParameters(
        uriPrefix: 'https://coolage.co.in/userprofile',
        link: Uri.parse('https://coolage.co.in/userprofile/$uid'),
        androidParameters: const AndroidParameters(
          packageName: 'com.kraigs.coolage',
        ),
      );

      var dynamicUrl =
          await FirebaseDynamicLinks.instance.buildShortLink(parameters);
      final url = dynamicUrl.shortUrl;
      debugPrint(url.toString());
      return url.toString();
    } catch (e) {
      Fluttertoast.showToast(msg: "Something went wrong!");
    }
  }
}
