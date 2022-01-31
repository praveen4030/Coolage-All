part of core;

mixin ShowDialogCross {
  static void showDialogCross(BuildContext context, double upperAlignment) {
    showDialog(
        context: context,
        builder: (context) {
          return Align(
            alignment: Alignment(0, upperAlignment),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              backgroundColor: Kolors.greyBlue,
              child: Image.asset(
                'assets/icons/cancel.png',
                color: Colors.white,
                height: 20,
                width: 20,
              ),
            ),
          );
        });
  }
}
