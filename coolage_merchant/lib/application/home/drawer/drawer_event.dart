part of 'drawer_bloc.dart';

@freezed
class DrawerEvent with _$DrawerEvent {
  const factory DrawerEvent.openCloseDrawer() = _OpenCloseDrawer;
}
