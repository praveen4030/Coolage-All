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
    @required this.child,
  }) : super(key: key);

  @override
  _PaymentGatewayButtonState createState() => _PaymentGatewayButtonState();
}

class _PaymentGatewayButtonState extends State<PaymentGatewayButton> {
  static const platform = const MethodChannel("razorpay_flutter");

  late Razorpay _razorpay;

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
      paymentWithCashfree();
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Kolors.greyWhite,
      child: GestureDetector(
        onTap: () {
          //only for testing
          // if (widget.isEnabled!) {
          //   widget.onSuccess!('sjfol');
          // }
          // return;
          if (widget.isEnabled! &&
              widget.amount! > 10 &&
              (widget.receiverName?.isNotEmpty ?? false)) {
            // openCheckout();
            checkForPhoneNo(context);
          } else if (widget.amount! <= 10) {
            Fluttertoast.showToast(
                msg:
                    "Amount less than Rs 10. Please add more items to the cart");
          } else if (widget.receiverName?.isEmpty ?? true) {
            Fluttertoast.showToast(msg: "No user name found");
          } else {
            Fluttertoast.showToast(msg: widget.notEnabledError!);
          }
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
      var code = Random().nextInt(90000000) + 10000000;
      String orderId = code.toString();
      Map<String, dynamic> map = {
        'orderId': orderId,
        'orderAmount': (widget.amount!).toInt(),
        "orderCurrency": "INR",
      };
      final jsonEncoded = json.encode(map);
      final response = await Dio().post(
        SecureConstants.TOKEN_GENERATE_URL,
        data: jsonEncoded,
        options: Options(
          headers: {
            'x-client-id': SecureConstants.CASHFREE_API,
            'x-client-secret': SecureConstants.CASHFREE_API_SECRET,
            "Access-Control-Allow-Origin": "*",
            "Access-Control-Allow-Headers":
                "Access-Control-Allow-Origin, Accept",
          },
        ),
      );
      if (response.statusCode == 200) {
        final responseMap = response.data as Map<String, dynamic>;
        String token = responseMap['cftoken'] as String;
        final params = {
          'color1': "#842EFF",
          "color2": "#FFFFFF",
          'tokenData': token,
          'stage': SecureConstants.PAYMENT_TYPE,
          "appId": SecureConstants.CASHFREE_API,
          'orderId': orderId,
          "orderAmount": (widget.amount!).toInt(),
          "customerName": widget.receiverName ?? '',
          "customerPhone": user.phoneNo ?? '',
          "customerEmail": user.emailId ?? '',
          "hideOrderId": false,
          "orderCurrency": "INR",
          "orderNote": widget.description ?? '',
          "notifyUrl":
              "http://b5ca-2405-201-5c12-2835-44ba-ae9f-f122-a51a.ngrok.io/api/paymentSuccessWebhook"
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
