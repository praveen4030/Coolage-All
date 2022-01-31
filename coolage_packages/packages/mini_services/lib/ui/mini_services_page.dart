part of mini_services;

class MiniServicesPage extends StatelessWidget {
  const MiniServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollegeBloc, CollegeState>(
      builder: (context, state) {
        final miniServices = state.collegeModel!.miniServices ?? [];
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
                  BlocBuilder<CoolageDetailsBloc, CoolageDetailsState>(
                    builder: (context, state) {
                      final allMiniServices =
                          state.coolageDetailsModel!.miniServices ?? {};
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: miniServices.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 24,
                          childAspectRatio: 0.95,
                        ),
                        itemBuilder: (context, index) {
                          final name = miniServices[index];
                          final image = allMiniServices[name];
                          // return Container(child: CustomText(text: 'dv'));
                          return ServiceCard(
                            image: image!,
                            name: name,
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            floatingActionButton: MiniServicesCoreFunctionality.isAdmin
                ? FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AddMiniServiceProviderPage(
                                category: "Barber",
                              )));
                    },
                    backgroundColor: Kolors.secondaryColor1,
                    child: const Icon(Icons.add),
                  )
                : null,
          ),
        );
      },
    );
  }
}
