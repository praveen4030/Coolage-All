part of core;

class OTPPinFields extends StatefulWidget {
  final TextEditingController? textEditingController;
  final Color color;
  const OTPPinFields({
    Key? key,
    this.textEditingController,
    this.color = Kolors.primaryColor1,
  }) : super(key: key);

  @override
  _OTPPinFieldsState createState() => _OTPPinFieldsState();
}

class _OTPPinFieldsState extends State<OTPPinFields> {
  TextEditingController? textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    textEditingController = widget.textEditingController;
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      backgroundColor: Colors.white,
      autoFocus: true,
      appContext: context,
      cursorColor: Colors.black,
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 27,
        fontFamily: Fonts.HEADING_FONT,
        fontWeight: FontWeight.w500,
      ),
      blinkWhenObscuring: true,
      // validator: (v) {
      //   if (v!.length < 6) {
      //     return "Please provide 6 digits code";
      //   } else {
      //     return null;
      //   }
      // },
      enableActiveFill: true,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.underline,
        borderWidth: 2,
        fieldHeight: 45,
        fieldWidth: 50,
        borderRadius: BorderRadius.zero,
        activeColor: Kolors.greyBlue,
        selectedColor: widget.color,
        selectedFillColor: Colors.white,
        inactiveColor: Kolors.greyBlue,
        errorBorderColor: Kolors.greyBlue,
        inactiveFillColor: Colors.white,
        activeFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      errorAnimationController: errorController,
      controller: widget.textEditingController,
      keyboardType: TextInputType.number,
      onCompleted: (v) {},
      onChanged: (value) {},
      // beforeTextPaste: (text) {
      //   return false;
      // },
    );
  }
}
