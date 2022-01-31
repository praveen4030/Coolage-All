part of feed;

class PublishFeedPage extends StatefulWidget {
  const PublishFeedPage({Key? key}) : super(key: key);

  @override
  State<PublishFeedPage> createState() => _PublishFeedPageState();
}

class _PublishFeedPageState extends State<PublishFeedPage> {
  String category = "All";
  DateTime? selectedDate;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        getMorePosts();
      }
    });
    super.initState();
    context.read<FeedBloc>().add(FeedEvent.getPublishingPosts(
        userCollege: Getters.getCurrentUserCollege(context)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeedBloc, FeedState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.isPublishingPostsLoading
            ? const Center(child: LogoLoading())
            : RefreshIndicator(
                onRefresh: () async {
                  onMenuTap(category);
                },
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.only(bottom: 70),
                    child: Column(
                      children: [
                        PublishFeedHeader(
                          onCancelDate: () {
                            setState(() {
                              selectedDate = null;
                            });
                            onMenuTap(category);
                          },
                          category: category,
                          selectedDate: selectedDate,
                          onChange: (String? val) {
                            selectedDate = null;
                            onMenuTap(val);
                          },
                          onDateChange: (DateTime? date) {
                            setState(() {
                              selectedDate = date;
                            });
                            onMenuTap(category);
                          },
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.publishingPostsList.length,
                          itemBuilder: (context, index) {
                            return FeedTile(
                              feedModel: state.publishingPostsList[index],
                              index: index,
                              isOpenedFromApproved: false,
                              isNonEditablePublishingMode: true,
                            );
                          },
                        ),
                        if (state.fetchMorePublishingPostsLoading)
                          const Center(child: LogoLoading()),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }

  void onMenuTap(String? value) {
    if (value == null) return;
    category = value;

    if (category == "All") {
      context.read<FeedBloc>().add(FeedEvent.getPublishingPosts(
            userCollege: Getters.getCurrentUserCollege(context),
            selectedDate: selectedDate,
          ));
    } else if (category == "New") {
      context.read<FeedBloc>().add(FeedEvent.getPublishingPosts(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.PENDING,
            selectedDate: selectedDate,
          ));
    } else if (category == "Live") {
      context.read<FeedBloc>().add(FeedEvent.getPublishingPosts(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.APPROVED,
            selectedDate: selectedDate,
          ));
    } else if (category == "Declined") {
      context.read<FeedBloc>().add(FeedEvent.getPublishingPosts(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.DECLINED,
            selectedDate: selectedDate,
          ));
    } else if (category == "Expired") {
      context.read<FeedBloc>().add(FeedEvent.getPublishingPosts(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.EXPIRED,
            selectedDate: selectedDate,
          ));
    }

    setState(() {});
  }

  void getMorePosts() {
    if (category == "All") {
      context.read<FeedBloc>().add(FeedEvent.getMorePublishingPosts(
            userCollege: Getters.getCurrentUserCollege(context),
            selectedDate: selectedDate,
          ));
    } else if (category == "New") {
      context.read<FeedBloc>().add(FeedEvent.getMorePublishingPosts(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.PENDING,
            selectedDate: selectedDate,
          ));
    } else if (category == "Live") {
      context.read<FeedBloc>().add(FeedEvent.getMorePublishingPosts(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.APPROVED,
            selectedDate: selectedDate,
          ));
    } else if (category == "Declined") {
      context.read<FeedBloc>().add(FeedEvent.getMorePublishingPosts(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.DECLINED,
            selectedDate: selectedDate,
          ));
    } else if (category == "Expired") {
      context.read<FeedBloc>().add(FeedEvent.getMorePublishingPosts(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.EXPIRED,
            selectedDate: selectedDate,
          ));
    }
  }
}
