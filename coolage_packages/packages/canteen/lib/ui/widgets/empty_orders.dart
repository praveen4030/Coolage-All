part of canteen;

class EmptyOrdersWidget extends StatelessWidget {
  const EmptyOrdersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Center(
              child: Image.asset(
                'assets/illustrations/no_orders.png',
                width: 300,
                height: 250,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomText(
            text: "No orders available!",
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Kolors.greyBlue.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
