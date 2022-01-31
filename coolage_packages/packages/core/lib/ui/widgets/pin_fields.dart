part of core;

class PinCodeFields extends StatefulWidget {
  final TextEditingController? textEditingController;
  const PinCodeFields({
    Key? key,
    this.textEditingController,
  }) : super(key: key);

  @override
  _PinCodeFieldsState createState() => _PinCodeFieldsState();
}

class _PinCodeFieldsState extends State<PinCodeFields> {
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
      autoFocus: true,
      appContext: context,
      cursorColor: Colors.black,
      pastedTextStyle: TextStyle(
        color: Colors.green.shade600,
        fontWeight: FontWeight.bold,
      ),
      length: 6,
      obscureText: true,
      blinkWhenObscuring: true,
      animationType: AnimationType.fade,
      validator: (v) {
        if (v!.length < 6) {
          return "Please provide 6 digits code";
        } else {
          return null;
        }
      },
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        borderWidth: 1,
        fieldHeight: 45,
        fieldWidth: 50,
        activeColor: Kolors.greyBlue,
        selectedColor: Kolors.primaryColor1,
        selectedFillColor: Colors.white,
        inactiveColor: Kolors.greyBlue,
        inactiveFillColor: Colors.white,
        activeFillColor: hasError ? Colors.blue.shade100 : Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      errorAnimationController: errorController,
      controller: widget.textEditingController,
      keyboardType: TextInputType.number,
      boxShadows: const [
        BoxShadow(
          offset: Offset(0, 1),
          color: Colors.black12,
          blurRadius: 10,
        )
      ],
      onCompleted: (v) {},
      onChanged: (value) {},
      beforeTextPaste: (text) {
        return false;
      },
    );
  }
}
