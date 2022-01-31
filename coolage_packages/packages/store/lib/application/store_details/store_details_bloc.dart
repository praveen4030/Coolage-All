import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coolage/domain/base/canteen/cart_model.dart';
import 'package:coolage/domain/models/item_model.dart';
import 'package:coolage/domain/base/store/i_store_repo.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/domain/base/store/store_model.dart';
import 'package:coolage/domain/core/failure/firebase_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'store_details_event.dart';
part 'store_details_state.dart';
part 'store_details_bloc.freezed.dart';

@injectable
class StoreDetailsBloc extends Bloc<StoreDetailsEvent, StoreDetailsState> {
  final IStoreRepo iStoreRepo;
  StoreDetailsBloc(this.iStoreRepo) : super(StoreDetailsState.initial());

  @override
  Stream<StoreDetailsState> mapEventToState(
    StoreDetailsEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getCollegeStores: (e) async* {
        yield state.copyWith(
          isStoresListLoading: true,
          collegeStoresListFailureOrSuccess: none(),
          collegeStoresList: [],
        );
        final opt = await iStoreRepo.getCollegeStores(e.college);
        yield opt.fold((failure) {
          return state.copyWith(
            isStoresListLoading: false,
            collegeStoresListFailureOrSuccess: some(failure),
          );
        }, (stores) {
          return state.copyWith(
            isStoresListLoading: false,
            collegeStoresListFailureOrSuccess: none(),
            collegeStoresList: stores,
          );
        });
      },
      getStoreProductsList: (e) async* {
        yield state.copyWith(
          isStoreProductsListLoading: true,
          storeProductsListFailureOrSuccess: none(),
          storeProductsList: [],
        );
        final opt = await iStoreRepo.getStoreProducts(e.storeId);
        yield opt.fold((failure) {
          return state.copyWith(
            isStoreProductsListLoading: false,
            storeProductsListFailureOrSuccess: some(failure),
          );
        }, (products) {
          return state.copyWith(
            isStoreProductsListLoading: false,
            storeProductsListFailureOrSuccess: none(),
            storeProductsList: products,
          );
        });
      },
      addToCart: (e) async* {
        yield state.copyWith(
          addToCartFailureOrSuccess: none(),
        );
        final opt = await iStoreRepo.addToStoreCart(
            e.isIncreased, e.storeItems, e.storeBasicDetailsModel);
        yield opt.fold((failure) {
          return state.copyWith(
            addToCartFailureOrSuccess: some(left(failure)),
          );
        }, (_) {
          return state.copyWith(
            addToCartFailureOrSuccess: some(right(unit)),
          );
        });
      },
    );
  }
}
