part of 'services_bloc.dart';

@freezed
class ServicesState with _$ServicesState {
  const factory ServicesState({
    @required Map<String, List<ServiceProviderModel>>? serviceProvidersMap,
    @required bool? isLoading,
    @required Option<FirebaseFailure>? failureOrSuccessOption,
    @required bool? isAddingServiceProvider,
    @required Option<Either<FirebaseFailure, Unit>>? addServiceResultOpt,
    @required bool? isDeletingServiceProvider,
    @required Option<Either<FirebaseFailure, Unit>>? deleteServiceResultOpt,
  }) = _ServicesState;
  factory ServicesState.initial() => ServicesState(
        serviceProvidersMap: {},
        isLoading: true,
        failureOrSuccessOption: none(),
        isAddingServiceProvider: false,
        isDeletingServiceProvider: false,
        deleteServiceResultOpt: none(),
        addServiceResultOpt: none(),
      );
}
