part of canteen;


class CanteenDetailsPage extends StatefulWidget {
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;
  const CanteenDetailsPage({
    Key? key,
    @required this.canteenBasicDetailsModel,
  }) : super(key: key);

  @override
  _CanteenDetailsPageState createState() => _CanteenDetailsPageState();
}

class _CanteenDetailsPageState extends State<CanteenDetailsPage> {
  bool _showBackToTopButton = false;
  AutoScrollController? _autoScrollController;
  final scrollDirection = Axis.vertical;
  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(() {
        if (_autoScrollController!.offset >= 1000 && !_showBackToTopButton) {
          _showBackToTopButton = true;
          context.read<CanteenDetailsBloc>().add(
              const CanteenDetailsEvent.showBackToTop(
                  isShowingbackToTop: true));
        } else if (_autoScrollController!.offset < 1000 &&
            _showBackToTopButton) {
          _showBackToTopButton = false;
          context.read<CanteenDetailsBloc>().add(
              const CanteenDetailsEvent.showBackToTop(
                  isShowingbackToTop: false));
        }
      });
    context
        .read<CanteenDetailsBloc>()
        .add(const CanteenDetailsEvent.getCanteenCartItems());
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController!
        .scrollToIndex(index, preferPosition: AutoScrollPosition.begin);
    _autoScrollController!.highlight(index);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CanteenDetailsBloc, CanteenDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            body: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 350,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
                Column(
                  children: [
                    CoolageAppBar(
                      backgroundColor: Kolors.greyWhite,
                      actions: const [
                        CartIconButton(),
                      ],
                      text: widget.canteenBasicDetailsModel!.name,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView(
                        controller: _autoScrollController,
                        children: [
                          AutoScrollTag(
                            key: const ValueKey(0),
                            controller: _autoScrollController!,
                            index: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 40),
                                    child: PhotoViewTap(
                                      imageUrl: widget
                                          .canteenBasicDetailsModel!.image!,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: CachedNetworkImage(
                                          imageUrl: widget
                                              .canteenBasicDetailsModel!.image!,
                                          height: 146,
                                          fit: BoxFit.cover,
                                          width:
                                              MediaQuery.of(context).size.width,
                                        ),
                                      ),
                                    ),
                                  ),
                                  canteenHeaderBottom(),
                                ],
                              ),
                            ),
                          ),
                          SwitchVegNonVegWidget(
                            canteenBasicDetailsModel:
                                widget.canteenBasicDetailsModel,
                          ),
                          if (state.isCanteenDetailsLoading!)
                            const Padding(
                              padding: EdgeInsets.only(top: 100),
                              child: LogoLoading(),
                            )
                          else
                            MenuList(
                              autoScrollController: _autoScrollController,
                              canteenBasicDetailsModel:
                                  widget.canteenBasicDetailsModel,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniStartFloat,
            floatingActionButton: Row(
              children: [
                BrowseMenuWidget(
                  onScroll: (int index) {
                    _scrollToIndex(index + 1);
                  },
                ),
                const Spacer(),
                if (state.isShowingBackToTop!)
                  GestureDetector(
                    onTap: () async {
                      await _autoScrollController!.scrollToIndex(0,
                          preferPosition: AutoScrollPosition.begin);
                    },
                    child: Container(
                        decoration: const BoxDecoration(
                          color: Kolors.greyBlack,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                        ),
                        height: 50,
                        width: 50,
                        child: const Icon(
                          Icons.arrow_upward_outlined,
                          color: Colors.white,
                        )),
                  )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget canteenHeaderBottom() {
    return Row(
      children: [
        CanteenInfoTile(model: widget.canteenBasicDetailsModel),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Functions.launchURL(
                'tel://${widget.canteenBasicDetailsModel!.contactNo}');
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Kolors.greenColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Kolors.greyBlue.withOpacity(0.5),
                )
              ],
            ),
            child: Center(
              child: Image.asset(
                'assets/icons/call.png',
                color: Colors.white,
                height: 25,
                width: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
