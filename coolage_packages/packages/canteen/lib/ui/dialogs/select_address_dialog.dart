part of canteen;

class SelectAddressDialog extends StatelessWidget {
  final String? zoneSelected;
  final Function? onProceedToPay;
  final Widget? paymentButton;
  const SelectAddressDialog({
    Key? key,
    @required this.zoneSelected,
    @required this.onProceedToPay,
    @required this.paymentButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: const BoxDecoration(
            color: Kolors.greyWhite,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const CustomText(
                      text: "Address",
                    ),
                    const Spacer(),
                    if (state.isUpdatingProfileLoading!)
                      const CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                  ],
                ),
              ),
              Expanded(
                child: DeliveryAddressWidget(
                  zoneSelected: zoneSelected,
                ),
              ),
              paymentButton!,
            ],
          ),
        );
      },
    );
  }
}
