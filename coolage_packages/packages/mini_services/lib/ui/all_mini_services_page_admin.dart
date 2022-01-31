part of mini_services;

class AllMiniServicesPageAdmin extends StatelessWidget {
  const AllMiniServicesPageAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoolageDetailsBloc, CoolageDetailsState>(
      builder: (context, state) {
        final allMiniServices = state.coolageDetailsModel!.miniServices ?? {};
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: CoolageAppBar(
                isCenter: true,
                backgroundColor: Kolors.greyWhite,
                actions: [],
                text: 'SERVICES',
              ),
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: allMiniServices.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 24,
                      childAspectRatio: 0.95,
                    ),
                    itemBuilder: (context, index) {
                      final name = allMiniServices.keys.toList()[index];
                      final image = allMiniServices.values.toList()[index];
                      // return Container(child: CustomText(text: 'dv'));
                      return ServiceCard(
                        image: image,
                        name: name,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
