part of 'sales_statistics_bloc.dart';

@freezed
class SalesStatisticsState with _$SalesStatisticsState {
  const factory SalesStatisticsState({
    @required bool? isLoading,
    @required bool? isMoreLoading,
    @required List<DailySaleModel>? dailySalesList,
  }) = _SalesStatisticsState;

  factory SalesStatisticsState.initial() => const SalesStatisticsState(
        isLoading: false,
        isMoreLoading: false,
        dailySalesList: [],
      );
}
