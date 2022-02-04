part of core;

class PaymentGatewayButton extends StatefulWidget {
  final String? receiverName;
  final double? amount;
  final String? description;
  final Function? onSuccess;
  final Function? onFailure;
  final bool? isLoading;
  final bool? isEnabled;
  final String? notEnabledError;
  final Widget? child;
  final Function triggerLoadingFn;
  const PaymentGatewayButton({
    Key? key,
    @required this.receiverName,
    @required this.amount,
    @required this.description,
    @required this.onSuccess,
    @required this.onFailure,
    @required this.isLoading,
    @required this.isEnabled,
    @required this.notEnabledError,
    required this.triggerLoadingFn,
    @required this.child,
  }) : super(key: key);

  @override
  _PaymentGatewayButtonState createState() => _PaymentGatewayButtonState();
}

class _PaymentGatewayButtonState extends State<PaymentGatewayButton> {
  late Razorpay _razorpay;

  Future<void> checkForPhoneNo(BuildContext context) async {
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
      await paymentWithCashfree();
    } else {
      await ifPhoneNoNotAvailable();
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Kolors.greyWhite,
      child: GestureDetector(
        onTap: () async {
          if (widget.isEnabled! &&
              widget.amount! > 10 &&
              (widget.receiverName?.isNotEmpty ?? false)) {
            // openCheckout();
            widget.triggerLoadingFn(true);
            await checkForPhoneNo(context);
            widget.triggerLoadingFn(false);
          } else if (widget.amount! <= 10) {
            Fluttertoast.showToast(
                msg:
                    "Amount less than Rs 10. Please add more items to the cart");
          } else if (widget.receiverName?.isEmpty ?? true) {
            Fluttertoast.showToast(msg: "No user name found");
          } else {
            Fluttertoast.showToast(msg: widget.notEnabledError!);
          }
          widget.triggerLoadingFn(false);
        },
        child: Center(
          child: widget.child,
        ),
      ),
    );
  }

  Future<void> paymentWithCashfree() async {
    try {
      final user = context.read<AuthenticationBloc>().state.coolUser!;
      final userAuth = await FirebaseAuth.instance.currentUser!.getIdToken();
      Map<String, dynamic> map = {
        'type': "PROD",
        'orderAmount': (widget.amount!).toInt(),
      };
      final jsonEncoded = json.encode(map);
      final response =
          await Dio().post(SecureConstants.coolageBackendApiBaseUrl,
              data: jsonEncoded,
              options: Options(headers: {
                "Authorization": "Bearer $userAuth",
              }));
      if (response.statusCode == 200) {
        final responseMap = response.data as Map<String, dynamic>;
        String token = responseMap['data']['cftoken'] as String;
        String orderId = responseMap['data']['orderId'].toString();
        final params = {
          'color1': "#842EFF",
          "color2": "#FFFFFF",
          'tokenData': token,
          'stage': SecureConstants.PAYMENT_TYPE,
          "appId": SecureConstants.CASHFREE_API,
          'orderId': orderId,
          "orderAmount": (widget.amount!).toInt(),
          "customerName": widget.receiverName ?? '',
          "customerPhone": user.phoneNo?.isNotEmpty ?? false
              ? user.phoneNo
              : '+919876543211',
          "customerEmail": user.emailId?.isNotEmpty ?? false
              ? user.emailId
              : 'hello@coolage.co.in',
          "hideOrderId": false,
          "orderCurrency": "INR",
          "orderNote": widget.description ?? '',
          "notifyUrl": ""
        };

        final map = await CashfreePGSDK.doPayment(params);
        if (map == null) {
          Fluttertoast.showToast(msg: "Payment failed!");
          if (widget.onFailure != null) {
            widget.onFailure!(e.toString());
          }
        }
        final status = map!['txStatus'] as String;
        if (status == "SUCCESS") {
          Fluttertoast.showToast(
              msg:
                  "Payment made successfully! Do not press close or close till your order placed successfully!");
          widget.onSuccess!(orderId);
        } else if (status == "PENDING") {
          Fluttertoast.showToast(
              msg:
                  "You payment is pending from the bank side! Any money deducted from the bank side will be refunded withing few hours!");
          if (widget.onFailure != null) {
            widget.onFailure!(e.toString());
          }
        } else {
          Fluttertoast.showToast(msg: "Payment failed!");
          if (widget.onFailure != null) {
            widget.onFailure!(e.toString());
          }
        }
      } else {
        Fluttertoast.showToast(msg: "Payment failed!");
        if (widget.onFailure != null) {
          widget.onFailure!(e.toString());
        }
      }
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(msg: "Payment failed!");
      if (widget.onFailure != null) {
        widget.onFailure!(e.toString());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    // _razorpay = Razorpay();
    // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _razorpay.clear();
  // }

  void openCheckout() async {
    try {
      final user = context.read<AuthenticationBloc>().state.coolUser!;
      var options = {
        'key': SecureConstants.RAZORPAY_API,
        // 'amount': 100,
        'amount': (widget.amount! * 100).toInt(),
        'name': widget.receiverName ?? '',
        "timeout": "300",
        "theme.color": "#842EFF",
        "currency": "INR",
        'description': widget.description ?? '',
        'prefill': {'contact': user.phoneNo ?? '', 'email': user.emailId ?? ''},
        'external': {
          'wallets': ['paytm']
        }
      };

      try {
        _razorpay.open(options);
      } catch (e) {
        Fluttertoast.showToast(msg: "Payment failed!");
        debugPrint('Error: e');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Payment failed!");
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg:
            "Payment made successfully! Do not press close or close till your order placed successfully!");
    widget.onSuccess!(response.paymentId!);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(msg: "Payment failed!");
    if (widget.onFailure != null) {
      widget.onFailure!(response.message);
    }
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName!,
        toastLength: Toast.LENGTH_SHORT);
  }
}
