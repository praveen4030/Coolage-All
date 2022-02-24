part of canteen;

class PlaceOrderBottomWidget extends StatelessWidget {
  final CartModel cartModel;
  final String specialComment;
  final bool isDelivery;
  final bool isTakeAway;
  final DeliverableZonesModel zoneSelectedModel;
  const PlaceOrderBottomWidget({
    Key? key,
    required this.cartModel,
    required this.specialComment,
    required this.isDelivery,
    required this.isTakeAway,
    required this.zoneSelectedModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalPayable =
        cartModel.getTotalPayableBasedOnDelivery(isDelivery, zoneSelectedModel);
    return SizedBox(
      height: 75,
      child: PaymentGatewayButton(
        cartModel: cartModel,
        specialComment: specialComment,
        isDelivery: isDelivery,
        isTakeAway: isTakeAway,
        zoneSelectedModel: zoneSelectedModel,
        triggerLoadingFn: (bool val) {
          context
              .read<CanteenDetailsBloc>()
              .add(CanteenDetailsEvent.placeOrderLoading(isLoading: val));
        },
        amount: totalPayable,
        isEnabled: checkIfPaymentEnabling(context),
        notEnabledError: 'Please add the delivery address',
      ),
    );
  }

  bool checkIfPaymentEnabling(BuildContext context) {
    if (!isDelivery) {
      return true;
    }
    final addressMap =
        context.read<AuthenticationBloc>().state.coolUser!.deliveryAddressesMap;
    if (addressMap == null) return false;
    final addresses = addressMap[zoneSelectedModel.zone] ?? {};
    if (isDelivery && addresses.isEmpty) {
      return false;
    }
    return true;
  }
}
