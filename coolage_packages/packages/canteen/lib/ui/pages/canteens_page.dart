part of canteen;

class CanteenPage extends StatefulWidget {
  const CanteenPage({Key? key}) : super(key: key);

  @override
  _CanteenPageState createState() => _CanteenPageState();
}

class _CanteenPageState extends State<CanteenPage> {
  Future<void> onRefresh(BuildContext context) async {
    CanteenCoreFunctionality.initializeBloc(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            // child: BaseAppBar(
            //   textColor: Colors.black,
            //   text: 'CANTEEN',
            //   baseAppBarAction: BaseAppBarAction.canteen,
            // ),
          ),
        ),
        backgroundColor: Kolors.greyWhite,
        body: RefreshIndicator(
          onRefresh: () => onRefresh(context),
          child: ListView(
            children: [
              const SizedBox(
                height: 8,
              ),
              //TODO get cards list
              canteenCards(),
              const PreviousOrdersCard(),
              const CanteensCard(),
              const SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget canteenCards() {
    return BlocBuilder<CanteenCardsBloc, CanteenCardsState>(
        builder: (context, state) {
      return CardsList(
        cardsList: state.canteenCardsList ?? [],
        height: 150,
        marginRight: 20,
        marginLeft: 20,
        titleIfEditAccessForAdmin: "Canteen Banners",
      );
    });
  }
}
