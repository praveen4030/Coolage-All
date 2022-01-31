part of 'drawer_bloc.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState({
    @required bool? isDrawerOpen,
  }) = _DrawerState;
  factory DrawerState.initial() => const DrawerState(
        isDrawerOpen: false,
      );
}
