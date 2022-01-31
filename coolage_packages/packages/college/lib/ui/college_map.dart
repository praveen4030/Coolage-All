part of college;

class CollegeMapWidget extends StatelessWidget {
  final AboutCollegeModel? aboutCollegeModel;
  const CollegeMapWidget({
    Key? key,
    @required this.aboutCollegeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (aboutCollegeModel!.geoPoint != null) {}
        String googleUrl =
            'https://www.google.com/maps/search/?api=1&query=${aboutCollegeModel!.geoPoint!.latitude},${aboutCollegeModel!.geoPoint!.longitude}';
        Functions.launchURL(googleUrl);
      },
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(text: "Campus Map"),
              if (aboutCollegeModel!.geoPoint != null)
                const CustomText(
                  text: "Open in google maps",
                  fontFamily: Fonts.CONTENT_FONT,
                  fontSize: 12,
                  color: Kolors.greyBlue,
                )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 220.0,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: aboutCollegeModel!.mapImage!,
                fit: BoxFit.cover,
                placeholder: (_, __) {
                  return Container(
                    height: 100,
                    color: Kolors.white,
                    child: const LogoLoading(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
