part of 'services_bloc.dart';

@freezed
class ServicesEvent with _$ServicesEvent {
  const factory ServicesEvent.getServiceProviders(
      {String? userCollege, String? category}) = _GetServiceProviders;
  const factory ServicesEvent.addServiceProvider({
    String? userCollege,
    ServiceProviderModel? serviceProviderModel,
    File? file,
    int? index,
  }) = _AddServiceProvider;
  const factory ServicesEvent.deleteServiceProvider(
      {String? userCollege,
      ServiceProviderModel? serviceProviderModel,
      int? index}) = _DeleteServiceProvider;
}
