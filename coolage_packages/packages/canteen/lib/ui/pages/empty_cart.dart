part of canteen;

class EmptyCardWidget extends StatelessWidget {
  const EmptyCardWidget({Key? key}) : super(key: key);

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
                'assets/illustrations/empty_cart.png',
                width: 364,
                height: 300,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomText(
            text: "Cart is empty",
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Kolors.greyBlue.withOpacity(0.5),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomText(
            text: "Looks like you haven't \nmade your choice yet",
            fontSize: 18,
            color: Kolors.greyBlue.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
