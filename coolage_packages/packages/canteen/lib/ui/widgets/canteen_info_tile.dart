part of canteen;

class CanteenInfoTile extends StatelessWidget {
  final CanteenBasicDetailsModel? model;
  const CanteenInfoTile({
    Key? key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showDialog(
          barrierColor: Colors.black54,
          context: context,
          builder: (context) {
            return canteenExtraInfoPoints(context);
          },
        );
      },
      child: canteenBasicInfoTile(),
    );
  }

  Widget canteenBasicInfoTile() {
    final location = model!.location;
    DateTime dateTime = DateTime(2021, 01, 01, model!.closeAtTimeOfDay!.hour,
        model!.closeAtTimeOfDay!.minute);
    final String time = DateFormat("h:mm a").format(dateTime);

    final delivery = model!.isDelivery! ? "AVAILABLE" : "NOT AVAILABLE";
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Kolors.greyBlue.withOpacity(0.5),
          )
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomText(
                text: "$location | Open till :  ",
                fontSize: 12,
                fontFamily: Fonts.CONTENT_FONT,
                textAlign: TextAlign.center,
                color: Kolors.greyBlue,
              ),
              CustomText(
                text: time,
                fontSize: 12,
                fontFamily: Fonts.CONTENT_FONT,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.info,
                size: 14,
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const CustomText(
                text: "Room Delivery : ",
                fontSize: 12,
                fontFamily: Fonts.CONTENT_FONT,
                textAlign: TextAlign.center,
                color: Kolors.greyBlue,
              ),
              CustomText(
                text: delivery,
                fontSize: 12,
                fontFamily: Fonts.CONTENT_FONT,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: model!.isDelivery!
                        ? Kolors.greenColor
                        : Kolors.redPrimaryColor),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget canteenExtraInfoPoints(BuildContext context) {
    final geopoint = model!.canteenGeopointModel!.geopoint!;
    return Align(
      alignment: Alignment(-0.4, -0.2),
      child: Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: Kolors.greyBlue,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 50,
                bottom: 18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (model!.about?.isNotEmpty ?? false)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (model!.about!.isNotEmpty)
                          CustomText(
                            text: model!.about ?? '',
                            fontFamily: Fonts.CONTENT_FONT,
                            fontSize: 11,
                            color: Colors.white,
                          ),
                        if (model!.about!.isNotEmpty)
                          const SizedBox(
                            height: 16,
                          ),
                      ],
                    ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          String googleUrl =
                              'https://www.google.com/maps/search/?api=1&query=${geopoint.latitude},${geopoint.longitude}';
                          Functions.launchURL(googleUrl);
                        },
                        child: Row(
                          children: [
                            const CustomText(
                              text: "Location :  ",
                              fontFamily: Fonts.CONTENT_FONT,
                              fontSize: 11,
                              color: Colors.white,
                            ),
                            Container(
                              child: Container(
                                height: 36,
                                width: 122,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.transparent.withOpacity(0.08),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const CustomText(
                                  text: "Open in Google Maps",
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Kolors.greyWhite,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  if (model!.getDeliveryChargeRange().isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              "Delivery Charges : ${model!.getDeliveryChargeRange()}",
                          fontFamily: Fonts.CONTENT_FONT,
                          fontSize: 11,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  if (model!.preperationTime?.isNotEmpty ?? false)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Preperation Time : ${model!.preperationTime}",
                          fontFamily: Fonts.CONTENT_FONT,
                          fontSize: 11,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 70),
              child: Container(
                child: canteenBasicInfoTile(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
