import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coolage_merchant/domain/base/sales/daily_sale_model.dart';
import 'package:coolage_merchant/domain/base/sales/i_daily_sales_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sales_statistics_event.dart';
part 'sales_statistics_state.dart';
part 'sales_statistics_bloc.freezed.dart';

@injectable
class SalesStatisticsBloc
    extends Bloc<SalesStatisticsEvent, SalesStatisticsState> {
  final IDailySalesRepo iDailySalesRepo;
  SalesStatisticsBloc(this.iDailySalesRepo)
      : super(SalesStatisticsState.initial());

  @override
  Stream<SalesStatisticsState> mapEventToState(
    SalesStatisticsEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getInititalSalesStatistics: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final opt = await iDailySalesRepo.getInitialDailySalesReport(
            DateTime.now(), e.canteenId, 3);
        yield opt.fold((l) {
          return state.copyWith(
            isLoading: false,
          );
        }, (list) {
          return state.copyWith(
            isLoading: false,
            dailySalesList: list,
          );
        });
      },
      getMoreSalesStatistics: (e) async* {
        if (state.dailySalesList!.isEmpty) {
          return;
        }
        final lastSale = state.dailySalesList!.last;
        final dateTime = lastSale.dateTime!.add(Duration(days: -1));

        if (e.openingDate.isAfter(lastSale.dateTime!)) {
          return;
        }
        yield state.copyWith(
          isMoreLoading: true,
        );
        final opt =
            await iDailySalesRepo.getDailySalesReport(dateTime, e.canteenId);
        yield opt.fold((l) {
          return state.copyWith(
            isMoreLoading: false,
          );
        }, (model) {
          state.dailySalesList!.add(model);
          return state.copyWith(
            isMoreLoading: false,
          );
        });
      },
      getOverallSalesStatistics: (e) async* {},
    );
  }
}
