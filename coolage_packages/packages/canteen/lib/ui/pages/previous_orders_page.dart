part of canteen;

class PreviousOrdersPage extends StatefulWidget {
  const PreviousOrdersPage({Key? key}) : super(key: key);

  @override
  _PreviousOrdersPageState createState() => _PreviousOrdersPageState();
}

class _PreviousOrdersPageState extends State<PreviousOrdersPage> {
  final ScrollController _scrollController = ScrollController();

  Future<void> onRefresh(BuildContext context) async {
    context
        .read<UserOrdersBloc>()
        .add(const UserOrdersEvent.getUserOrdersDetails());
  }

  @override
  void initState() {
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        context
            .read<UserOrdersBloc>()
            .add(const UserOrdersEvent.getMoreUserOrdersDetails());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserOrdersBloc, UserOrdersState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: CoolageAppBar(
                backgroundColor: Kolors.greyWhite,
                actions: [
                  CartIconButton(),
                ],
                text: 'All Previous Orders',
              ),
            ),
            body: RefreshIndicator(
              onRefresh: () => onRefresh(context),
              child: SingleChildScrollView(
                controller: _scrollController,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: state.ordersList!.isNotEmpty
                    ? Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.ordersList!.length,
                              itemBuilder: (context, index) {
                                return PreviousOrderTile(
                                    model: state.ordersList![index]);
                              },
                            ),
                            if (state.isMoreOrdersLoading!) const LogoLoading()
                          ],
                        ),
                      )
                    : const EmptyOrdersWidget(),
              ),
            ),
          ),
        );
      },
    );
  }
}
