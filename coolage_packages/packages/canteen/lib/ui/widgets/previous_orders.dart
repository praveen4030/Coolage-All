part of canteen;

class PreviousOrdersCard extends StatelessWidget {
  const PreviousOrdersCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserOrdersBloc, UserOrdersState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.ordersList!.isEmpty && !state.isOrdersLoading!) {
            return Container();
          }
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: "Your Orders",
                      fontSize: 22,
                    ),
                    GestureDetector(
                      onTap: () async {
                        Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PreviousOrdersPage()));
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Kolors.greyBlue.withOpacity(0.5),
                            )
                          ],
                        ),
                        child: Image.asset(
                          'assets/icons/clock.png',
                          height: 25,
                          width: 17.5,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                if (state.isOrdersLoading!)
                  const LogoLoading()
                else
                  ListView.builder(
                    itemCount: state.ordersList!.length < 2
                        ? state.ordersList!.length
                        : 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return getOrderTile(state.ordersList![index]);
                    },
                  ),
              ],
            ),
          );
        });
  }

  Widget getOrderTile(OrderModel orderModel) {
    if (orderModel.isOngoingOrder()) {
      return StreamBuilder(
        stream: FirebaseFirestore.instance.canteenBasicDetailsCollection
            .doc(orderModel.canteenId)
            .canteenOngoingOrdersCollection
            .doc(orderModel.orderId)
            .snapshots(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasData &&
              snapshot.data != null &&
              (snapshot.data?.data() != null)) {
            final model = OrderModel.fromMap(
                snapshot.data!.data()! as Map<String, dynamic>);
            return PreviousOrderTile(model: model);
          } else {
            return Container();
          }
        },
      );
    } else {
      return PreviousOrderTile(model: orderModel);
    }
  }
}
