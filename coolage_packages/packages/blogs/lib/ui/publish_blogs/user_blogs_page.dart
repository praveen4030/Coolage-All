part of blogs;

class UserBlogsPage extends StatefulWidget {
  UserBlogsPage({Key? key}) : super(key: key);

  @override
  _UserBlogsPageState createState() => _UserBlogsPageState();
}

class _UserBlogsPageState extends State<UserBlogsPage> {
  String category = "All";
  DateTime? selectedDate;
  @override
  void initState() {
    super.initState();
    context.read<BlogsBloc>().add(BlogsEvent.getUserBlogs(
          coolUser: Getters.getCurrentUser(context),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BlogsBloc, BlogsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.isUserBlogsLoading
            ? const Center(child: LogoLoading())
            : SingleChildScrollView(
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
                        itemCount: state.userBlogsList.length,
                        itemBuilder: (context, index) {
                          return BlogTile(
                            model: state.userBlogsList[index],
                            index: index,
                            isOpenedFromApproved: false,
                            isNonEditablePublishingMode: false,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }

  void onMenuTap(String value) {
    category = value;

    if (category == "All") {
      context.read<BlogsBloc>().add(BlogsEvent.getUserBlogs(
            coolUser: Getters.getCurrentUser(context),
            selectedDate: selectedDate,
          ));
    } else if (category == "New") {
      context.read<BlogsBloc>().add(BlogsEvent.getUserBlogs(
            coolUser: Getters.getCurrentUser(context),
            status: Constants.PENDING,
            selectedDate: selectedDate,
          ));
    } else if (category == "Live") {
      context.read<BlogsBloc>().add(BlogsEvent.getUserBlogs(
            coolUser: Getters.getCurrentUser(context),
            status: Constants.APPROVED,
            selectedDate: selectedDate,
          ));
    } else if (category == "Declined") {
      context.read<BlogsBloc>().add(BlogsEvent.getUserBlogs(
            coolUser: Getters.getCurrentUser(context),
            status: Constants.DECLINED,
            selectedDate: selectedDate,
          ));
    }
    setState(() {});
  }
}
