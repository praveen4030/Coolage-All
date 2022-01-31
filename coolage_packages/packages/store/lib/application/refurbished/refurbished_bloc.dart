import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:store/domain/i_refurbished_repo.dart';

part 'refurbished_event.dart';
part 'refurbished_state.dart';
part 'refurbished_bloc.freezed.dart';

@injectable
class RefurbishedBloc extends Bloc<RefurbishedEvent, RefurbishedState> {
  final IRefurbishedRepo iRefurbishedRepo;
  RefurbishedBloc(this.iRefurbishedRepo) : super(RefurbishedState.initial());

  @override
  Stream<RefurbishedState> mapEventToState(
    RefurbishedEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getRefurbishedItems: (e) async* {
        yield state.copyWith(
          isLoading: true,
          hasMore: true,
          failureOrSuccessOption: none(),
        );

        if (e.college != null) {
          final opt = await iRefurbishedRepo.getRefurbishedItems(e.college!);
          yield opt.fold((failure) {
            return state.copyWith(
              failureOrSuccessOption: some(failure),
              isLoading: false,
              hasMore: false,
            );
          }, (refurbishedItems) {
            bool hasMore = true;
            if (refurbishedItems.length == Constants.REFURBISHED_ITEMS_LIMIT) {
              hasMore = true;
            } else {
              hasMore = false;
            }
            return state.copyWith(
              failureOrSuccessOption: none(),
              isLoading: false,
              refurbishedItemsList: refurbishedItems,
              hasMore: hasMore,
            );
          });
        } else {
          yield state.copyWith(
            isLoading: false,
            failureOrSuccessOption: some(
              FirebaseFailure.customError('Something went wrong!'),
            ),
          );
        }
      },
      getMoreRefurbishedItems: (e) async* {
        if (state.hasMore! &&
            state.refurbishedItemsList!.length >= Constants.BLOGS_LIMIT) {
          yield state.copyWith(
            isAddingMoreLoading: true,
            hasMore: true,
            failureOrSuccessOption: none(),
          );

          if (e.college != null) {
            final lastItem = state.refurbishedItemsList!.last;
            final opt = await iRefurbishedRepo.getMoreRefurbishedItems(
                e.college!, lastItem);
            yield opt.fold((failure) {
              return state.copyWith(
                failureOrSuccessOption: some(failure),
                isAddingMoreLoading: false,
                hasMore: false,
              );
            }, (refurbishedItemsList) {
              bool hasMore = true;
              if (refurbishedItemsList.length == Constants.BLOGS_LIMIT) {
                hasMore = true;
              } else {
                hasMore = false;
              }
              final updatedBlogsList =
                  List<RefurbishedModel>.from(state.refurbishedItemsList!)
                    ..addAll(refurbishedItemsList);
              return state.copyWith(
                failureOrSuccessOption: none(),
                isAddingMoreLoading: false,
                refurbishedItemsList: updatedBlogsList,
                hasMore: hasMore,
              );
            });
          } else {
            yield state.copyWith(
              isLoading: false,
              failureOrSuccessOption: some(
                const FirebaseFailure.customError('Something went wrong!'),
              ),
            );
          }
        }
      },
      addRefurbishedItem: (e) async* {},
    );
  }
}
