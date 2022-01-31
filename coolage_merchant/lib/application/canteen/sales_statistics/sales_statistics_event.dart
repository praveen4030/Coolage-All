part of 'sales_statistics_bloc.dart';

@freezed
class SalesStatisticsEvent with _$SalesStatisticsEvent {
  //get first 3 days sale statistics
  const factory SalesStatisticsEvent.getInititalSalesStatistics(
      String canteenId) = _GetInititalSalesStatistics;
  const factory SalesStatisticsEvent.getMoreSalesStatistics(
    String canteenId,
    DateTime openingDate,
  ) = _GetMoreSalesStatistics;
  const factory SalesStatisticsEvent.getOverallSalesStatistics(
    String canteenId,
  ) = _GetOverallSalesStatistics;
}
