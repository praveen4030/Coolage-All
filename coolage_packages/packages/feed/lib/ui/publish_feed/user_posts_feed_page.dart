part of feed;

class UserPostsFeedPage extends StatefulWidget {
  UserPostsFeedPage({Key? key}) : super(key: key);

  @override
  _UserPostsFeedPageState createState() => _UserPostsFeedPageState();
}

class _UserPostsFeedPageState extends State<UserPostsFeedPage> {
  String category = "All";
  DateTime? selectedDate;
  @override
  void initState() {
    super.initState();
    context
        .read<FeedBloc>()
        .add(FeedEvent.getUserPosts(coolUser: Getters.getCurrentUser(context)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeedBloc, FeedState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.isUserPostsLoading
            ? const Center(child: LogoLoading())
            : SingleChildScrollView(
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
                        itemCount: state.userPostsList.length,
                        itemBuilder: (context, index) {
                          return FeedTile(
                            feedModel: state.userPostsList[index],
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
      context.read<FeedBloc>().add(FeedEvent.getUserPosts(
            coolUser: Getters.getCurrentUser(context),
            selectedDate: selectedDate,
          ));
    } else if (category == "New") {
      context.read<FeedBloc>().add(FeedEvent.getUserPosts(
            coolUser: Getters.getCurrentUser(context),
            status: Constants.PENDING,
            selectedDate: selectedDate,
          ));
    } else if (category == "Live") {
      context.read<FeedBloc>().add(FeedEvent.getUserPosts(
            coolUser: Getters.getCurrentUser(context),
            status: Constants.APPROVED,
            selectedDate: selectedDate,
          ));
    } else if (category == "Declined") {
      context.read<FeedBloc>().add(FeedEvent.getUserPosts(
            coolUser: Getters.getCurrentUser(context),
            status: Constants.DECLINED,
            selectedDate: selectedDate,
          ));
    } else if (category == "Expired") {
      context.read<FeedBloc>().add(FeedEvent.getUserPosts(
            coolUser: Getters.getCurrentUser(context),
            status: Constants.EXPIRED,
            selectedDate: selectedDate,
          ));
    }

    setState(() {});
  }
}
