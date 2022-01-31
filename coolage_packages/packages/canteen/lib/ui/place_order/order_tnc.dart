part of canteen;

class OrdersTncWidget extends StatelessWidget {
  const OrdersTncWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoolageDetailsBloc, CoolageDetailsState>(
      builder: (context, state) {
        final model = state.coolageDetailsModel!.orderTncModel!;
        return Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icons/orders_tnc.png',
                width: 31,
                height: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: model.title,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: model.pointsList!.length,
                      itemBuilder: (context, index) {
                        return OrderTncPointTile(
                          index: index + 1,
                          point: model.pointsList?[index] ?? '',
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
