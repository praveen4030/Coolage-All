part of college;

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  void initState() {
    super.initState();
    context.read<CollegeBloc>().add(
          CollegeEvent.getAboutCollege(
            userCollege: Getters.getCurrentUserCollege(context),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CollegeBloc, CollegeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          color: Kolors.greyWhite,
          child: state.isLoading!
              ? const Center(
                  child: LogoLoading(),
                )
              : ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: state.aboutCollegeModel!.imagesList!.isNotEmpty
                          ? CardsList(
                              cardsList: cardsModelList(
                                  state.aboutCollegeModel!.imagesList ?? []),
                              marginRight: 5,
                              marginLeft: 5,
                              titleIfEditAccessForAdmin: "College Banners",
                              onCardTap: () {
                                if (CardsCoreFunctionality.isAdmin) {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const AddCollegeImagesPage()));
                                }
                              },
                            )
                          : EmptyCardWidget(
                              onTap: () {
                                if (CardsCoreFunctionality.isAdmin) {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const AddCollegeImagesPage()));
                                }
                              },
                            ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          AboutCollegeWidget(
                              aboutCollegeModel: state.aboutCollegeModel),
                          if ((state.aboutCollegeModel!.mapImage?.isNotEmpty ??
                                  false) &&
                              state.aboutCollegeModel!.geoPoint != null)
                            CollegeMapWidget(
                              aboutCollegeModel: state.aboutCollegeModel,
                            ),
                          OfficialLinksWidget(
                              officialLinksList:
                                  state.aboutCollegeModel!.officialLinksList),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
        );
      },
    );
  }

  List<Cards> cardsModelList(List<String> cardsList) {
    final List<Cards> modelsList = [];
    for (String element in cardsList) {
      if (element.isNotEmpty) {
        Cards card = Cards.fromImageUrl(element);
        modelsList.add(card);
      }
    }
    return modelsList;
  }
}
