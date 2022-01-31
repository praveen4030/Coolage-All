part of mini_services;

class MiniServiceDetailsPage extends StatefulWidget {
  final String? service;
  const MiniServiceDetailsPage({
    Key? key,
    @required this.service,
  }) : super(key: key);

  @override
  State<MiniServiceDetailsPage> createState() => _MiniServiceDetailsPageState();
}

class _MiniServiceDetailsPageState extends State<MiniServiceDetailsPage> {
  @override
  void initState() {
    super.initState();
    context.read<ServicesBloc>().add(
          ServicesEvent.getServiceProviders(
            category: widget.service,
            userCollege: Getters.getCurrentUserCollege(context),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServicesBloc, ServicesState>(
      listener: (context, state) {},
      builder: (context, state) {
        final serviceProvidersList =
            state.serviceProvidersMap![widget.service] ?? [];
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: CoolageAppBar(
                backgroundColor: Kolors.greyWhite,
                actions: [],
                text: widget.service,
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: serviceProvidersList.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return MiniServiceProviderTile(
                          serviceProviderModel: serviceProvidersList[index],
                          index: index,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: MiniServicesCoreFunctionality.isAdmin
                ? FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AddMiniServiceProviderPage(
                            category: widget.service,
                          ),
                        ),
                      );
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
