part of blogs;

class BlogTile extends StatelessWidget {
  final BlogsModel model;
  final int index;
  final bool isOpenedFromApproved;
  final bool isNonEditablePublishingMode;
  final bool isSingleFeedPost;

  const BlogTile({
    Key? key,
    required this.model,
    required this.index,
    required this.isOpenedFromApproved,
    this.isNonEditablePublishingMode = false,
    this.isSingleFeedPost = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (BlogCoreFunctionality.isAdmin ||
            (model.postedByUid == Getters.getCurrentUserUid() &&
                !isOpenedFromApproved)) {
          Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
              builder: (context) => AddBlogPage(
                    blogModel: model,
                    index: index,
                    isOpenedFromApproved: isOpenedFromApproved,
                    isNonEditablePublishingMode: isNonEditablePublishingMode,
                  )));
        } else {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => WebViewPage(url: model.blogUrl)));
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        child: Stack(
          children: [
            if (!isOpenedFromApproved) feedHeader(),
            Container(
              margin: EdgeInsets.only(top: isOpenedFromApproved ? 0 : 20),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(
                        color: isOpenedFromApproved
                            ? Colors.white
                            : getFeedTileColor(),
                        width: 2,
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 32,
                      top: 12,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: model.filterTags!.isNotEmpty
                                    ? model.filterTags![0]
                                    : '',
                                color: Kolors.greyBlue,
                                fontSize: 12,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              CustomText(
                                text: model.title,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              CustomText(
                                text: ' - ${model.author}',
                                color: Kolors.greyBlue,
                                fontSize: 12,
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                model.text!,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: Fonts.CONTENT_FONT,
                                  fontSize: 12,
                                  color: Kolors.greyBlack,
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomText(
                              text: Functions.getDate(model.timestamp!),
                              color: Kolors.greyBlue,
                              fontSize: 10,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: CachedNetworkImage(
                                imageUrl: model.image!,
                                fit: BoxFit.fill,
                                height: 117,
                                width: 85,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // ButtonWid(
                            //   height: 30,
                            //   fontSize: 14,
                            //   width: 70,
                            //   onTap: () {},
                            //   text: BlogCoreFunctionality.isAdmin ? "Edit" : "Read",
                            // ),
                            // const SizedBox(
                            //   height: 5,
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    child: Row(
                      children: [
                        BlogLikeWidget(
                          index: index,
                          isSingleFeedPost: isSingleFeedPost,
                          blogsModel: model,
                        ),
                        const Spacer(),
                        ButtonWid(
                          height: 30,
                          fontSize: 14,
                          width: 70,
                          onTap: () {},
                          text: BlogCoreFunctionality.isAdmin ? "Edit" : "Read",
                        ),
                        const SizedBox(
                          width: 23,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget feedHeader() {
    return Container(
      decoration: BoxDecoration(
        color: Kolors.greyBlue.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 28,
      alignment: Alignment.topCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 28,
            padding: const EdgeInsets.only(
              top: 4,
              left: 4,
              right: 4,
            ),
            decoration: BoxDecoration(
              color: getFeedTileColor(),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
            ),
            child: CustomText(
              text: postedDate(),
              color: Kolors.white,
              fontWeight: FontWeight.w600,
              fontSize: 10,
              fontFamily: Fonts.CONTENT_FONT,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(
              top: 4,
              right: 4,
            ),
            child: CustomText(
              text: headerActiveStatus(),
              color: Kolors.greyBlue,
              fontWeight: FontWeight.w600,
              fontSize: 10,
              fontFamily: Fonts.CONTENT_FONT,
            ),
          )
        ],
      ),
    );
  }

  Color getFeedTileColor() {
    if (model.approvalStatus == Constants.PENDING) {
      return Kolors.secondaryColor1;
    } else if (model.approvalStatus == Constants.DECLINED) {
      return Kolors.greyBlue;
    } else if (model.approvalStatus == Constants.APPROVED) {
      return Kolors.primaryColor1;
    }
    return Colors.white;
  }

  String postedDate() {
    final date = intl.DateFormat("d MMM y").format(model.timestamp!.toDate());
    return "POSTED : $date";
  }

  String headerActiveStatus() {
    if (model.approvalStatus == Constants.PENDING) {
      return "APPROVAL PENDING";
    } else if (model.approvalStatus == Constants.DECLINED) {
      if (model.declinedTimestamp == null) return "DECLINED";
      final date =
          intl.DateFormat("d MMM. y").format(model.declinedTimestamp!.toDate());
      return "DECLINED - $date";
    } else if (model.approvalStatus == Constants.APPROVED) {
      if (model.timestamp == null) return "LIVE";

      final date =
          intl.DateFormat("d MMM. y").format(model.timestamp!.toDate());
      return "LIVE SINCE - $date";
    }
    return '';
  }
}
