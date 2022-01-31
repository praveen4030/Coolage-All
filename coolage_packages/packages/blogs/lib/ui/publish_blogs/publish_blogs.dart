part of blogs;

class PublishBlogsPage extends StatefulWidget {
  const PublishBlogsPage({Key? key}) : super(key: key);

  @override
  State<PublishBlogsPage> createState() => _PublishBlogsPageState();
}

class _PublishBlogsPageState extends State<PublishBlogsPage> {
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
    context.read<BlogsBloc>().add(BlogsEvent.getPublishingBlogs(
          userCollege: Getters.getCurrentUserCollege(context),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BlogsBloc, BlogsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.isPublishingBlogsLoading
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
                        PublishBlogsHeader(
                          onCancelDate: () {
                            setState(() {
                              selectedDate = null;
                            });
                            onMenuTap(category);
                          },
                          category: category,
                          selectedDate: selectedDate,
                          onChange: (val) {
                            onMenuTap(val as String);
                          },
                          onDateChange: (DateTime date) {
                            setState(() {
                              selectedDate = date;
                            });
                            onMenuTap(category);
                          },
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.publishingBlogsList.length,
                          itemBuilder: (context, index) {
                            return BlogTile(
                              model: state.publishingBlogsList[index],
                              index: index,
                              isOpenedFromApproved: false,
                              isNonEditablePublishingMode: true,
                            );
                          },
                        ),
                        if (state.fetchMorePublishingBlogsLoading)
                          const Center(child: LogoLoading()),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }

  void onMenuTap(String value) {
    category = value;

    if (category == "All") {
      context.read<BlogsBloc>().add(BlogsEvent.getPublishingBlogs(
            userCollege: Getters.getCurrentUserCollege(context),
            selectedDate: selectedDate,
          ));
    } else if (category == "New") {
      context.read<BlogsBloc>().add(BlogsEvent.getPublishingBlogs(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.PENDING,
            selectedDate: selectedDate,
          ));
    } else if (category == "Live") {
      context.read<BlogsBloc>().add(BlogsEvent.getPublishingBlogs(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.APPROVED,
            selectedDate: selectedDate,
          ));
    } else if (category == "Declined") {
      context.read<BlogsBloc>().add(BlogsEvent.getPublishingBlogs(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.DECLINED,
            selectedDate: selectedDate,
          ));
    }
    setState(() {});
  }

  void getMorePosts() {
    if (category == "All") {
      context.read<BlogsBloc>().add(BlogsEvent.getMorePublishingBlogs(
            userCollege: Getters.getCurrentUserCollege(context),
            selectedDate: selectedDate,
          ));
    } else if (category == "New") {
      context.read<BlogsBloc>().add(BlogsEvent.getMorePublishingBlogs(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.PENDING,
            selectedDate: selectedDate,
          ));
    } else if (category == "Live") {
      context.read<BlogsBloc>().add(BlogsEvent.getMorePublishingBlogs(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.APPROVED,
            selectedDate: selectedDate,
          ));
    } else if (category == "Declined") {
      context.read<BlogsBloc>().add(BlogsEvent.getMorePublishingBlogs(
            userCollege: Getters.getCurrentUserCollege(context),
            status: Constants.DECLINED,
            selectedDate: selectedDate,
          ));
    }
  }
}
