part of canteen;

class PlaceOrderBottomWidget extends StatelessWidget {
  final CartModel? cartModel;
  final String? specialComment;
  final bool? isDelivery;
  final bool? isTakeAway;
  final DeliverableZonesModel? zoneSelectedModel;
  // final int? deliveryAddressIndex;
  const PlaceOrderBottomWidget({
    Key? key,
    @required this.cartModel,
    @required this.specialComment,
    @required this.isDelivery,
    // @required this.deliveryAddressIndex,
    @required this.isTakeAway,
    @required this.zoneSelectedModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalPayable = cartModel!
        .getTotalPayableBasedOnDelivery(isDelivery!, zoneSelectedModel!);
    final address = getAddress(context);
    return BlocConsumer<CanteenDetailsBloc, CanteenDetailsState>(
      listener: (context, state) {
        state.placeOrderFailureOrSuccess!.fold(() {}, (either) {
          either.fold(
            (failure) async {
              Navigator.of(context).pop();
              FlushbarHelper.createError(message: failure.error).show(context);
            },
            (orderId) async {
              context
                  .read<UserOrdersBloc>()
                  .add(const UserOrdersEvent.getUserOrdersDetails());
              if (isDelivery!) {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              } else {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              }
              Fluttertoast.showToast(msg: "Order placed successfully!");
            },
          );
        });
      },
      builder: (context, state) {
        return SizedBox(
          height: 75,
          child: PaymentGatewayButton(
            receiverName: cartModel!.canteenBasicDetailsModel!.name,
            amount: totalPayable,
            description: getPaymentDesc(context),
            isEnabled: checkIfPaymentEnabling(context),
            notEnabledError: 'Please add the delivery address',
            onSuccess: (String paymentId) {
              String address = '';
              if (isDelivery!) {
                address = getAddress(context);
                debugPrint(address);
              }
              context
                  .read<CanteenDetailsBloc>()
                  .add(CanteenDetailsEvent.placeOrder(
                    cartModel: cartModel,
                    isDelivery: isDelivery,
                    deliveryAddress: address,
                    coolUser: Getters.getCurrentUser(context),
                    paymentId: paymentId,
                    isTakeAway: isTakeAway,
                    comments: specialComment,
                    deliverableZonesModel: zoneSelectedModel,
                  ));
            },
            onFailure: (failure) {
              String address = '';
              final user = Getters.getCurrentUser(context);
              if (isDelivery!) {
                address = getAddress(context);
                debugPrint(address);
              }
            },
            isLoading: !state.isPlacingOrder!,
            child: Container(
              color: Kolors.greenColor,
              height: 75,
              alignment: Alignment.center,
              child: state.isPlacingOrder!
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CustomText(
                          text: "Proceed to Pay",
                          color: Kolors.white,
                          fontSize: 24,
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }

  bool checkIfPaymentEnabling(BuildContext context) {
    if (!isDelivery!) {
      return true;
    }
    if (zoneSelectedModel == null) return false;
    final addressMap =
        context.read<AuthenticationBloc>().state.coolUser!.deliveryAddressesMap;
    if (addressMap == null) return false;
    final addresses = addressMap[zoneSelectedModel!.zone] ?? {};
    if (isDelivery! && addresses.isEmpty) {
      return false;
    }
    return true;
  }

  String getPaymentDesc(BuildContext context) {
    String menu = '';
    final list = cartModel!.cartItemsMap!.values.toList();
    for (int i = 0; i < list.length; i++) {
      final m = list[i];
      if (m.categoryPrices!.isEmpty) {
        menu = '$menu${m.itemName!} (x${m.qty})';
      } else {
        for (int j = 0; j < m.categoryPrices!.length; j++) {
          if (m.categoryPrices![j].qty! > 0) {
            menu =
                '$menu${m.itemName!} (${m.categoryPrices![j].category})  (x${m.categoryPrices![j].qty}) ';
            if (j != m.categoryPrices!.length - 1) {
              menu = '$menu , ';
            }
          }
        }
      }

      if (i != list.length - 1) {
        menu = '$menu , ';
      }
    }
    if (isDelivery!) {
      menu = '$menu, \n Delivery Address  : ${getAddress(context)}';
    } else if (isTakeAway ?? false) {
      menu = '$menu, \n Take Away';
    } else {
      menu = '$menu, \n On table';
    }
    return menu;
  }

  String getAddress(BuildContext context) {
    final index = context.read<CanteenDetailsBloc>().state.deliveryAddressIndex;
    final addressesMap =
        context.read<AuthenticationBloc>().state.coolUser!.deliveryAddressesMap;
    if (addressesMap != null &&
        addressesMap.containsKey(zoneSelectedModel!.zone)) {
      final list = addressesMap[zoneSelectedModel!.zone]!
          .values
          .toList()
          .reversed
          .toList();
      final deliveryAddress = list[index];
      String address =
          '${deliveryAddress.roomNo}\n${deliveryAddress.addressLine}\n${zoneSelectedModel!.zone}';
      debugPrint(address);
      return address;
    }
    return '';
  }
}
