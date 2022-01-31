import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coolage/application/store/store_details/store_details_bloc.dart';
import 'package:coolage/domain/base/store/i_store_repo.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/domain/base/store/store_model.dart';
import 'package:coolage/domain/core/failure/firebase_failure.dart';
import 'package:coolage/domain/core/helpers/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stores_list_event.dart';
part 'stores_list_state.dart';
part 'stores_list_bloc.freezed.dart';

@injectable
class StoresListBloc extends Bloc<StoresListEvent, StoresListState> {
  final IStoreRepo iStoreRepo;
  StoresListBloc(this.iStoreRepo) : super(StoresListState.initial());

  @override
  Stream<StoresListState> mapEventToState(
    StoresListEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getCollegeStores: (e) async* {
        yield state.copyWith(
          isCollegeStoresLoading: true,
          collegeStoresListFailureOrSuccess: none(),
        );
        if (e.userCollege != null) {
          final opt = await iStoreRepo.getCollegeStores(e.userCollege!);
          yield opt.fold((failure) {
            return state.copyWith(
              isCollegeStoresLoading: false,
              collegeStoresListFailureOrSuccess: some(failure),
            );
          }, (collegeStores) {
            return state.copyWith(
              isCollegeStoresLoading: false,
              collegeStoresListFailureOrSuccess: none(),
              collegeStoresList: collegeStores,
            );
          });
        } else {
          yield state.copyWith(
            isCollegeStoresLoading: false,
            collegeStoresListFailureOrSuccess: some(
              const FirebaseFailure.customError('Something went wrong!'),
            ),
          );
        }
      },
      getCategoryStores: (e) async* {
        yield state.copyWith(
          isCategoryStoresLoading: true,
          hasMoreThisCategoryStores: true,
          categoryStoresFailureOrSuccess: none(),
        );
        if (e.category != null) {
          final opt = await iStoreRepo.getCategoryStores(e.category!);
          yield opt.fold((failures) {
            return state.copyWith(
              isCategoryStoresLoading: false,
              categoryStoresFailureOrSuccess: some(failures),
            );
          }, (storesList) {
            bool hasMore = true;
            if (storesList.length == Constants.CATEGORY_STORES_LIMIT) {
              hasMore = true;
            } else {
              hasMore = false;
            }
            state.categoryStoresMap!.putIfAbsent(e.category!, () => storesList);
            return state.copyWith(
              isCategoryStoresLoading: false,
              categoryStoresFailureOrSuccess: none(),
              categoryStoresMap: state.categoryStoresMap,
              hasMoreThisCategoryStores: hasMore,
            );
          });
        } else {
          yield state.copyWith(
            isCategoryStoresLoading: false,
            categoryStoresFailureOrSuccess: some(
              const FirebaseFailure.customError('Something went wrong!'),
            ),
          );
        }
      },
      getMoreCategoryStores: (e) async* {
        if (state.hasMoreThisCategoryStores!) {
          yield state.copyWith(
            isAddingMoreCategoryStores: true,
            hasMoreThisCategoryStores: true,
            categoryStoresFailureOrSuccess: none(),
          );
          if (e.category != null) {
            final lastItem = state.categoryStoresMap![e.category]!.last;
            final opt =
                await iStoreRepo.getCategoryMoreStores(e.category!, lastItem);
            yield opt.fold((failures) {
              return state.copyWith(
                isAddingMoreCategoryStores: false,
                categoryStoresFailureOrSuccess: some(failures),
              );
            }, (storesList) {
              bool hasMore = true;
              if (storesList.length == Constants.CATEGORY_STORES_LIMIT) {
                hasMore = true;
              } else {
                hasMore = false;
              }
              final storesListUpdates = state.categoryStoresMap![e.category!];
              storesListUpdates!.addAll(storesList);
              state.categoryStoresMap!
                  .update(e.category!, (value) => storesListUpdates);

              return state.copyWith(
                isAddingMoreCategoryStores: false,
                categoryStoresFailureOrSuccess: none(),
                categoryStoresMap: state.categoryStoresMap,
                hasMoreThisCategoryStores: hasMore,
              );
            });
          }
        }
      },
    );
  }
}
