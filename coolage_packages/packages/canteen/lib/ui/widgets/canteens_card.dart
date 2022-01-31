part of canteen;

class CanteensCard extends StatefulWidget {
  const CanteensCard({
    Key? key,
  }) : super(key: key);

  @override
  State<CanteensCard> createState() => _CanteensCardState();
}

class _CanteensCardState extends State<CanteensCard> {
  geo.Coordinates? userCoordinates;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CanteenDetailsBloc, CanteenDetailsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                if (state.isCanteenDetailsLoading! ||
                    state.canteensList!.isNotEmpty)
                  campusCanteenList(state),
                if (state.isCanteensNearbyListLoading! ||
                    state.canteensNearbyList!.isNotEmpty)
                  canteenNearByList(state)
              ],
            ),
          );
        });
  }

  Widget campusCanteenList(CanteenDetailsState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Campus Canteens",
          fontSize: 18,
          color: Kolors.greyBlue,
        ),
        const SizedBox(
          height: 12,
        ),
        if (state.isCanteensListLoading!)
          const LogoLoading()
        else
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.canteensList!.length,
            itemBuilder: (context, index) {
              return CanteenTile(
                model: state.canteensList![index],
              );
            },
          ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Widget canteenNearByList(CanteenDetailsState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Canteens Nearby",
          fontSize: 18,
          color: Kolors.greyBlue,
        ),
        const SizedBox(
          height: 12,
        ),
        if (state.isCanteensNearbyListLoading!)
          const LogoLoading()
        else
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.canteensNearbyList!.length,
            itemBuilder: (context, index) {
              return CanteenTile(
                model: state.canteensNearbyList![index],
              );
            },
          ),
      ],
    );
  }
}
