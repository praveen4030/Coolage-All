import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'drawer_event.dart';
part 'drawer_state.dart';
part 'drawer_bloc.freezed.dart';

@injectable
class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(DrawerState.initial());

  @override
  Stream<DrawerState> mapEventToState(
    DrawerEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      openCloseDrawer: (e) async* {
        yield state.copyWith(
          isDrawerOpen: !state.isDrawerOpen!,
        );
      },
    );
  }
}
