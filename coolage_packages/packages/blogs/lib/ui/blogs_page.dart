part of blogs;

class BlogsPage extends StatefulWidget {
  const BlogsPage({Key? key}) : super(key: key);

  @override
  State<BlogsPage> createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
  List<String> selectedTags = [];
  bool isMyCitySelected = false;
  bool isMyCollegeSelected = false;
  String? city;
  String? college;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        List<String> tags = [];
        if (!isMyCitySelected && !isMyCollegeSelected && selectedTags.isEmpty) {
          tags = [city ?? '', college ?? '', 'Public'];
        }
        context.read<BlogsBloc>().add(BlogsEvent.getMoreBlogs(
              selectedTags: tags,
              city: isMyCitySelected ? city : null,
              college: isMyCollegeSelected ? college : null,
            ));
      }
    });
    super.initState();
    college = Getters.getCurrentUserCollege(context);
    city = CollegeGetters.getCurrentUserCollegeCity(context);
    List<String> tags = [city ?? '', college ?? '', 'Public'];
    context.read<BlogsBloc>().add(BlogsEvent.getBlogs(
          selectedTags: tags,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BlogsBloc, BlogsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<BlogsBloc>().add(BlogsEvent.getBlogs(
                  selectedTags: [city ?? '', college ?? '', 'Public']));
            },
            child: Scaffold(
              backgroundColor: Kolors.greyWhite,
              appBar: const PreferredSize(
                preferredSize: Size.fromHeight(80),
                child: CoolageAppBar(
                  backgroundColor: Kolors.greyWhite,
                  isCenter: true,
                  actions: [],
                  text: 'BLOGS',
                ),
              ),
              body: state.isApprovedBlogsLoading
                  ? const Center(child: LogoLoading())
                  : state.blogsList.isEmpty
                      ? const EmptyBlogsWidget()
                      : SingleChildScrollView(
                          controller: _scrollController,
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                // blogsCardsList(),
                                ListView.builder(
                                  itemCount: state.blogsList.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return BlogTile(
                                      model: state.blogsList[index],
                                      index: index,
                                      isOpenedFromApproved: true,
                                      isNonEditablePublishingMode:
                                          BlogCoreFunctionality.isAdmin &&
                                                  state.blogsList[index]
                                                          .postedByUid ==
                                                      Getters
                                                          .getCurrentUserUid()
                                              ? false
                                              : false,
                                    );
                                  },
                                ),
                                if (state.fetchMoreApprovedBlogsLoading)
                                  const Center(child: LogoLoading()),
                              ],
                            ),
                          ),
                        ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: Row(
                children: [
                  blogsFilterButton(),
                  const Spacer(),
                  !BlogCoreFunctionality.isAdmin
                      ? Container(
                          height: 0,
                        )
                      : GestureDetector(
                          onTap: () async {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const AddBlogPage(
                                      isOpenedFromApproved: true,
                                    )));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            decoration: const BoxDecoration(
                              color: Kolors.secondaryColor1,
                              shape: BoxShape.circle,
                            ),
                            height: 60,
                            width: 60,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget blogsFilterButton() {
    return GestureDetector(
      onTap: () async {
        ShowDialogCross.showDialogCross(context, -0.35);
        showModalBottomSheet(
            barrierColor: Colors.transparent,
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return FractionallySizedBox(
                heightFactor: 0.6,
                child: BlogsFilterDialog(
                  selectedTags: selectedTags,
                  isMyCitySelected: isMyCitySelected,
                  isMyCollegeSelected: isMyCollegeSelected,
                  onApply: (list, isCity, isCollege) {
                    // saveFeed();
                    setState(() {
                      selectedTags = list as List<String>;
                      isMyCitySelected = isCity as bool;
                      isMyCollegeSelected = isCollege as bool;
                    });
                    if (!isMyCitySelected &&
                        !isMyCollegeSelected &&
                        selectedTags.isEmpty) {
                      selectedTags = [city ?? '', college ?? '', 'Public'];
                    }
                    context.read<BlogsBloc>().add(
                          BlogsEvent.getBlogs(
                            selectedTags: selectedTags,
                            city: isMyCitySelected ? city : null,
                            college: isMyCollegeSelected ? college : null,
                          ),
                        );
                  },
                ),
              );
            }).whenComplete(() {
          Navigator.of(context).pop();
        });
      },
      child: Container(
          margin: const EdgeInsets.only(left: 20),
          decoration: const BoxDecoration(
            color: Kolors.primaryColor1,
            shape: BoxShape.circle,
          ),
          height: 60,
          width: 60,
          child: const Icon(
            Icons.filter_alt,
            color: Colors.white,
          )),
    );
  }
}
