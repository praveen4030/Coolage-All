part of mini_services;

class MiniServiceProviderTile extends StatelessWidget {
  final ServiceProviderModel? serviceProviderModel;
  final int? index;
  const MiniServiceProviderTile({
    Key? key,
    @required this.serviceProviderModel,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (MiniServicesCoreFunctionality.isAdmin) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddMiniServiceProviderPage(
                model: serviceProviderModel,
                category: serviceProviderModel!.category,
                index: index,
              ),
            ),
          );
        }
      },
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 17),
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 12,
              bottom: 36,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    serviceProviderModel!.image!,
                    width: 140,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: serviceProviderModel!.name,
                        fontSize: 18,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      CustomText(
                        text: serviceProviderModel!.desc,
                        fontSize: 12,
                        color: Kolors.greyBlue,
                        fontFamily: Fonts.CONTENT_FONT,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                if (MiniServicesCoreFunctionality.isAdmin)
                  forAdminEditFeedWidget()
                else
                  Expanded(child: Container()),
                if (serviceProviderModel!.geoPoint != null)
                  GestureDetector(
                    onTap: () {
                      final geopoint = serviceProviderModel!.geoPoint!;
                      String googleUrl =
                          'https://www.google.com/maps/search/?api=1&query=${geopoint.latitude},${geopoint.latitude}';
                      Functions.launchURL(googleUrl);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(),
                        ],
                      ),
                      child: Image.asset(
                        'assets/icons/location.png',
                        height: 25,
                        width: 25,
                        color: Kolors.secondaryColor1,
                      ),
                    ),
                  ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Functions.launchURL(
                        'https://wa.me/${serviceProviderModel!.callingNo}');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Kolors.greenColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(),
                      ],
                    ),
                    child: Image.asset(
                      'assets/icons/whatsapp_transparent.png',
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Functions.launchURL(
                        'tel:${serviceProviderModel!.callingNo}');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(),
                      ],
                    ),
                    child: Image.asset(
                      'assets/icons/call.png',
                      height: 25,
                      width: 25,
                      color: Kolors.secondaryColor1,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget forAdminEditFeedWidget() {
    return Expanded(
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          CircleIcon(
            icon: 'edit',
            height: 30,
            width: 30,
            onTap: () {},
            color: Colors.white,
            backgroundColor: Kolors.greyBlue,
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
