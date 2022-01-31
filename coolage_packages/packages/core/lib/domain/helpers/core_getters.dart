part of core;

mixin CoreGetters {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Map<String, Map<String, int>> getProgrammes(BuildContext context) {
    return context
        .read<CoolageDetailsBloc>()
        .state
        .coolageDetailsModel!
        .programmesMap!;
  }

  static BuildContext get getContext => navigatorKey.currentState!.context;
}
