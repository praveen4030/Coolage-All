part of canteen;

class PlaceOrderPage extends StatefulWidget {
  final CartModel? cartModel;
  final DeliverableZonesModel? zoneSelectedModel;
  final bool? isDelivery;
  final bool? isTakeAway;
  const PlaceOrderPage({
    Key? key,
    @required this.cartModel,
    @required this.zoneSelectedModel,
    @required this.isDelivery,
    @required this.isTakeAway,
  }) : super(key: key);

  @override
  _PlaceOrderPageState createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  final commentTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Kolors.greyWhite,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CoolageAppBar(
            actions: [],
            text: 'Order Summary',
            backgroundColor: Kolors.greyWhite,
          ),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        text: widget.cartModel!.canteenBasicDetailsModel!.name,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: Fonts.CONTENT_FONT,
                        color: Kolors.greyLightBlue,
                      ),
                      const Spacer(),
                      CustomText(
                        text: widget
                            .cartModel!.canteenBasicDetailsModel!.location,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: Fonts.CONTENT_FONT,
                        color: Kolors.greyLightBlue,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  CanteenBillWidget(
                    cartModel: widget.cartModel,
                    isDelivery: widget.isDelivery,
                    deliverableZonesModel: widget.zoneSelectedModel,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  OrderCommentsPage(
                    commentTEC: commentTEC,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                ],
              ),
            ),
            const OrdersTncWidget(),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
        bottomSheet: isKeyboardOpen
            ? null
            : widget.isDelivery!
                ? BottomButtonWidget(
                    onTap: () {
                      checkForPhoneNo(context);
                    },
                    text: "CONFIRM",
                  )
                : paymentButton(),
      ),
    );
  }

  void checkForPhoneNo(BuildContext context) {
    final authenticatedphone =
        FirebaseAuth.instance.currentUser!.phoneNumber?.isNotEmpty ?? false;
    final userPhone = context
            .read<AuthenticationBloc>()
            .state
            .coolUser!
            .phoneNo
            ?.isNotEmpty ??
        false;
    if (authenticatedphone) {
      if (!userPhone) {
        final user = context.read<AuthenticationBloc>().state.coolUser!;
        user.phoneNo = FirebaseAuth.instance.currentUser!.phoneNumber;
        context
            .read<AuthenticationBloc>()
            .add(AuthenticationEvent.userModified(user: user));
        context
            .read<AuthenticationBloc>()
            .add(AuthenticationEvent.updateUserDetails(coolUser: user));
      }
      onPlaceOrder(context);
    } else {
      ifPhoneNoNotAvailable();
    }
  }

  Future<void> ifPhoneNoNotAvailable() async {
    await showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: (context) {
          return PhoneAuthenticationDialog();
        });
  }

  void onPlaceOrder(BuildContext context) {
    ShowDialogCross.showDialogCross(context, -0.3);
    showModalBottomSheet(
        barrierColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        backgroundColor: Colors.white,
        // isScrollControlled: true,
        builder: (context) {
          return SelectAddressDialog(
            zoneSelected: widget.zoneSelectedModel!.zone,
            onProceedToPay: () {},
            paymentButton: paymentButton(),
          );
        }).whenComplete(() {
      Navigator.of(context).pop();
    });
    //if no address present
    final addresses = context
        .read<AuthenticationBloc>()
        .state
        .coolUser!
        .deliveryAddressesMap![widget.zoneSelectedModel!.zone];
    if (addresses?.isEmpty ?? true) {
      showModalBottomSheet(
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          context: context,
          builder: (context) {
            return AddAddressDialog(
              selectedZone: widget.zoneSelectedModel!.zone,
            );
          });
    }
  }

  Widget paymentButton() {
    return PlaceOrderBottomWidget(
      cartModel: widget.cartModel,
      specialComment: commentTEC.text,
      isTakeAway: widget.isTakeAway,
      isDelivery: widget.isDelivery,
      // deliveryAddressIndex: deliveryAddressIndex,
      zoneSelectedModel: widget.zoneSelectedModel,
    );
  }
}
