part of canteen;

class SwitchVegNonVegWidget extends StatelessWidget {
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;
  const SwitchVegNonVegWidget({
    Key? key,
    @required this.canteenBasicDetailsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CanteenDetailsBloc, CanteenDetailsState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(
            top: 32,
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Transform.scale(
                scale: 0.8,
                child: CupertinoSwitch(
                  trackColor: Kolors.greyBlue,
                  activeColor: Kolors.greenColor,
                  value: state.isShowingVeg ?? false,
                  onChanged: (bool? val) {
                    context.read<CanteenDetailsBloc>().add(
                        CanteenDetailsEvent.changeVegNonveg(
                            isVeg: val ?? false, isNonveg: false));
                  },
                ),
              ),
              const CustomText(
                text: "Veg",
                fontSize: 14,
              ),
              const SizedBox(
                width: 20,
              ),
              Transform.scale(
                scale: 0.8,
                child: CupertinoSwitch(
                  trackColor: Kolors.greyBlue,
                  activeColor: Kolors.redSecondaryColor,
                  value: state.isShowingNonVeg ?? false,
                  onChanged: (bool? val) {
                    context.read<CanteenDetailsBloc>().add(
                        CanteenDetailsEvent.changeVegNonveg(
                            isVeg: false, isNonveg: val ?? false));
                  },
                ),
              ),
              const CustomText(
                text: "Non-veg",
                fontSize: 14,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () async {
                  ShowDialogCross.showDialogCross(context, -0.3);
                  showModalBottomSheet(
                      barrierColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return MenuSearchDialog(
                          canteenBasicDetailsModel: canteenBasicDetailsModel,
                        );
                      }).whenComplete(() {
                    Navigator.of(context).pop();
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: Styles.boxShadow(),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/icons/search.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        );
      },
    );
  }
}
