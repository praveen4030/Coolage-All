part of core;

mixin Styles {
  static InputDecoration inputDecoration(BuildContext context, String hintText,
      {bool isUnderline = false}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Kolors.greyBlack,
        fontSize: 16,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Kolors.secondaryColor1,
          width: 0.8,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          color: Kolors.greyLight,
          width: 0.8,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.red[300]!),
      ),
    );
  }

  static InputDecoration loginFieldInputDecoration(
    BuildContext context,
  ) {
    return const InputDecoration(
      hintText: "Mobile Number",
      border: InputBorder.none,
    );
  }

  static List<BoxShadow> boxShadow() {
    return [
      BoxShadow(
        blurRadius: 4,
        color: Kolors.greyBlue.withOpacity(0.5),
      )
    ];
  }

  static List<BoxShadow> blackboxShadow() {
    return [
      BoxShadow(
        blurRadius: 4,
        offset: const Offset(0, 4),
        color: Kolors.greyBlack.withOpacity(0.25),
      )
    ];
  }
}
