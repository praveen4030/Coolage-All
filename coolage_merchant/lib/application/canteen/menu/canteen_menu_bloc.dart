import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/i_canteen_menu_repo.dart';
import 'package:coolage_merchant/domain/base/canteen/i_canteen_repo.dart';
import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'canteen_menu_event.dart';
part 'canteen_menu_state.dart';
part 'canteen_menu_bloc.freezed.dart';

@injectable
class CanteenMenuBloc extends Bloc<CanteenMenuEvent, CanteenMenuState> {
  final ICanteenMenuRepo iCanteenMenuRepo;
  CanteenMenuBloc(this.iCanteenMenuRepo) : super(CanteenMenuState.initial());

  @override
  Stream<CanteenMenuState> mapEventToState(
    CanteenMenuEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getMenu: (e) async* {
        yield state.copyWith(
          failureOrSuccessMenu: none(),
          itemFailureOrSuccess: none(),
          itemDeleteFailureOrSuccess: none(),
          addCategoryFailureOrSuccess: none(),
          isMenuLoading: true,
        );
        final opt = await iCanteenMenuRepo.getCanteenMenu(e.canteenId);
        yield opt.fold((failure) {
          return state.copyWith(
            isMenuLoading: false,
            failureOrSuccessMenu: some(failure),
          );
        }, (menu) {
          return state.copyWith(
            isMenuLoading: false,
            failureOrSuccessMenu: none(),
            menuItemsList: menu,
          );
        });
      },
      addMenuItem: (e) async* {
        yield state.copyWith(
          failureOrSuccessMenu: none(),
          itemFailureOrSuccess: none(),
          itemDeleteFailureOrSuccess: none(),
          addCategoryFailureOrSuccess: none(),
          isMenuItemLoading: true,
        );
        final opt = await iCanteenMenuRepo.addMenuItem(e.canteenId, e.itemModel,
            file: e.file);
        yield opt.fold((failure) {
          return state.copyWith(
            itemFailureOrSuccess: some(left(failure)),
            isMenuItemLoading: false,
          );
        }, (r) {
          state.menuItemsList!.add(e.itemModel);
          return state.copyWith(
            isMenuItemLoading: false,
            itemFailureOrSuccess: some(right(unit)),
          );
        });
      },
      updateMenuItem: (e) async* {
        yield state.copyWith(
          failureOrSuccessMenu: none(),
          itemFailureOrSuccess: none(),
          itemDeleteFailureOrSuccess: none(),
          addCategoryFailureOrSuccess: none(),
          isMenuItemLoading: true,
        );
        final opt = await iCanteenMenuRepo.updateMenuItem(
          e.canteenId,
          e.itemModel,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            itemFailureOrSuccess: some(left(failure)),
            isMenuItemLoading: false,
          );
        }, (r) {
          state.menuItemsList!
            ..removeAt(e.index)
            ..insert(e.index, e.itemModel);
          return state.copyWith(
            isMenuItemLoading: false,
            itemFailureOrSuccess: some(right(unit)),
          );
        });
      },
      deleteMenuItem: (e) async* {
        yield state.copyWith(
          failureOrSuccessMenu: none(),
          itemFailureOrSuccess: none(),
          itemDeleteFailureOrSuccess: none(),
          addCategoryFailureOrSuccess: none(),
          isDeleteItemLoading: true,
        );
        final opt =
            await iCanteenMenuRepo.deleteMenuItem(e.canteenId, e.itemModel);
        yield opt.fold((failure) {
          return state.copyWith(
            itemDeleteFailureOrSuccess: some(left(failure)),
            isDeleteItemLoading: false,
          );
        }, (r) {
          state.menuItemsList!.removeAt(e.index);
          return state.copyWith(
            isDeleteItemLoading: false,
            itemDeleteFailureOrSuccess: some(right(unit)),
          );
        });
      },
      addMenuCategory: (e) async* {
        yield state.copyWith(
          failureOrSuccessMenu: none(),
          itemFailureOrSuccess: none(),
          itemDeleteFailureOrSuccess: none(),
          addCategoryFailureOrSuccess: none(),
          isAddCategoryLoading: true,
        );
        final opt = await iCanteenMenuRepo.addCategory(e.canteenId, e.category);
        yield opt.fold((failure) {
          return state.copyWith(
            addCategoryFailureOrSuccess: some(left(failure)),
            isAddCategoryLoading: false,
          );
        }, (r) {
          return state.copyWith(
            addCategoryFailureOrSuccess: some(right(e.category)),
            isAddCategoryLoading: false,
          );
        });
      },
    );
  }
}
