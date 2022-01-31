part of core;

class TextFieldLineWidget extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validationFn;
  final String? hint;
  final bool isEnabled;
  final TextStyle? labelStyle;
  final TextStyle? focusedLabelStyle;
  final TextStyle? textStyle;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? listInputFormatter;
  final AutovalidateMode? autoValidateMode;
  final Function? onChanged;
  const TextFieldLineWidget({
    Key? key,
    @required this.controller,
    @required this.hint,
    this.validationFn,
    this.isEnabled = true,
    this.labelStyle,
    this.textStyle,
    this.textInputType,
    this.listInputFormatter,
    this.autoValidateMode,
    this.focusedLabelStyle,
    this.onChanged,
  }) : super(key: key);

  @override
  State<TextFieldLineWidget> createState() => _TextFieldLineWidgetState();
}

class _TextFieldLineWidgetState extends State<TextFieldLineWidget> {
  FocusNode? _focusNode;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode!.dispose();
    super.dispose();
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            onTap: _requestFocus,
            focusNode: _focusNode,
            autovalidateMode: widget.autoValidateMode,
            enabled: widget.isEnabled,
            controller: widget.controller,
            validator: widget.validationFn,
            maxLines: null,
            keyboardType: widget.textInputType,
            inputFormatters: widget.listInputFormatter,
            onChanged: (val) {
              if (widget.onChanged != null) {
                widget.onChanged!(val);
              }
            },
            style: widget.textStyle ??
                const TextStyle(
                  color: Kolors.greyBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: Fonts.HEADING_FONT,
                ),
            decoration: InputDecoration(
              labelText: widget.hint,
              labelStyle: getLabelTextStyle(),
              // contentPadding: EdgeInsets.zero,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Kolors.greyBlue,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Kolors.greyBlue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle getLabelTextStyle() {
    return widget.labelStyle ??
        const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: Fonts.HEADING_FONT,
          color: Kolors.greyBlue,
        );
  }
}
