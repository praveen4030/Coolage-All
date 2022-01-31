part of college;

class AboutCollegeWidget extends StatelessWidget {
  final AboutCollegeModel? aboutCollegeModel;
  const AboutCollegeWidget({
    Key? key,
    @required this.aboutCollegeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              aboutCollegeModel!.collegeLogo?.isNotEmpty ?? false
                  ? CachedNetworkImage(
                      imageUrl: aboutCollegeModel!.collegeLogo!,
                      height: 44,
                      width: 44,
                    )
                  : Container(
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Kolors.skyBlueColor,
                      ),
                      child: const IconImagesWid(
                        iconName: 'empty_logo.png',
                        height: 32,
                        width: 32,
                        color: Colors.white,
                      ),
                    ),
              const SizedBox(
                width: 15,
              ),
              Text(
                aboutCollegeModel!.collegeName!,
                style: const TextStyle(
                  fontFamily: Fonts.HEADING_FONT,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Kolors.greyBlack,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              if (CollegeCoreFunctionality.isAdmin)
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddAboutCollgePage(
                              about: aboutCollegeModel!.about!,
                              logoUrl: aboutCollegeModel!.collegeLogo!,
                            )));
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Kolors.greyBlue,
                    ),
                    child: const IconImagesWid(
                      iconName: 'edit.png',
                      color: Kolors.white,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Divider(
            color: Kolors.greyBlue.withOpacity(0.25),
            thickness: 1,
            height: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          if (aboutCollegeModel!.about?.isEmpty ?? true)
            const CustomText(
              text: "Add description..",
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 12,
              color: Kolors.greyBlue,
              fontWeight: FontWeight.w400,
            )
          else
            CustomText(
              text: aboutCollegeModel!.about!,
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 12,
              color: Kolors.greyBlue,
              fontWeight: FontWeight.w400,
            )
        ],
      ),
    );
  }
}
