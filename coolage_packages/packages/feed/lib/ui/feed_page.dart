part of feed;

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeedBloc, FeedState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: state.fetchMoreApprovedPostsLoading
              ? const Center(child: LogoLoading())
              : Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomText(
                          text: "Feed",
                          fontSize: 18,
                        ),
                        // CustomText(
                        //   text: "Today",
                        //   fontSize: 12,
                        //   color: Kolors.greyBlue,
                        //   fontWeight: FontWeight.w400,
                        // )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    if (state.isApprovedPostsLoading)
                      const Center(child: LogoLoading())
                    else
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.approvedPostsList.length,
                        itemBuilder: (context, index) {
                          return FeedTile(
                            feedModel: state.approvedPostsList[index],
                            index: index,
                            isOpenedFromApproved: true,
                            isNonEditablePublishingMode:
                                FeedCoreFunctionality.isAdmin ? true : false,
                          );
                        },
                      ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
        );
      },
    );
  }
}
