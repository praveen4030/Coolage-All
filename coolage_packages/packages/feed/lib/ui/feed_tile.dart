part of feed;

class FeedTile extends StatelessWidget {
  final FeedModel feedModel;
  final int index;
  final bool isOpenedFromApproved;
  final bool isNonEditablePublishingMode;
  const FeedTile({
    Key? key,
    required this.feedModel,
    required this.index,
    required this.isOpenedFromApproved,
    this.isNonEditablePublishingMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (FeedCoreFunctionality.isAdmin ||
            feedModel.postedByUid == Getters.getCurrentUserUid()) {
          Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
              builder: (context) => AddFeedItemPage(
                    feedModel: feedModel,
                    index: index,
                    isOpenedFromApproved: isOpenedFromApproved,
                    isNonEditablePublishingMode: isNonEditablePublishingMode,
                  )));
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (feedModel.categoryIcon?.isNotEmpty ?? false)
                          CachedNetworkImage(
                            imageUrl: feedModel.categoryIcon!,
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          )
                        else
                          Image.asset(
                            'assets/icons/${Functions.getFeedIcon(feedModel.addedByCategory!)}.png',
                            height: 60,
                            width: 60,
                          ),
                        const SizedBox(
                          width: 17,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: feedModel.title,
                                fontSize: 18,
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              if (feedModel.postedBy!.isNotEmpty)
                                Row(
                                  children: [
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(
                                          text: "Published by ",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: Kolors.primaryColor1,
                                            fontFamily: Fonts.CONTENT_FONT,
                                          ),
                                          children: [
                                            if (feedModel.postedBy!.isNotEmpty)
                                              TextSpan(
                                                text: feedModel.postedBy!,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color: Kolors.primaryColor1,
                                                  fontFamily:
                                                      Fonts.CONTENT_FONT,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              const SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: Functions.getShortDate(
                                        feedModel.timestamp!),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Kolors.greyBlue,
                                    fontFamily: Fonts.CONTENT_FONT,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  if (feedModel.timestamp!.toDate().day ==
                                      DateTime.now().day)
                                    CustomText(
                                      text: timeago.format(
                                          feedModel.timestamp!.toDate()),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Kolors.greyBlue,
                                      fontFamily: Fonts.CONTENT_FONT,
                                    ),
                                ],
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              CustomText(
                                text: feedModel.caption,
                                fontWeight: FontWeight.w400,
                                fontFamily: Fonts.CONTENT_FONT,
                                fontSize: 14,
                                color: Kolors.fontColor,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      // if (FeedCoreFunctionality.isAdmin &&
                      //     feedModel.approvalStatus == Constants.FEED_APPROVED)
                      //   forAdminEditFeedWidget()
                      // else
                      //   Expanded(child: Container()),

                      const Spacer(),
                      if (feedModel.image?.isNotEmpty ?? false)
                        CircleIcon(
                          icon: 'empty_image_icon',
                          height: 25,
                          color: Kolors.secondaryColor1,
                          width: 25,
                          onTap: () {
                            Navigator.of(context, rootNavigator: true)
                                .push(MaterialPageRoute(
                                    builder: (context) => PhotoViewPage(
                                          imageUrl: feedModel.image!,
                                        )));
                          },
                        ),
                      if (feedModel.image?.isNotEmpty ?? false)
                        const SizedBox(
                          width: 30,
                        ),
                      if (feedModel.redirectUrl?.isNotEmpty ?? false)
                        CircleIcon(
                          icon: 'visit',
                          height: 25,
                          width: 25,
                          onTap: () {
                            Functions.launchURL(feedModel.redirectUrl);
                          },
                          color: Kolors.secondaryColor1,
                        ),
                      if (feedModel.redirectUrl?.isNotEmpty ?? false)
                        const SizedBox(
                          width: 30,
                        ),
                      if (feedModel.contactNo?.isNotEmpty ?? false)
                        CircleIcon(
                          icon: 'call',
                          height: 25,
                          width: 25,
                          onTap: () {
                            final url = "tel:${feedModel.contactNo}";
                            Functions.launchURL(url);
                          },
                          color: Kolors.secondaryColor1,
                        ),
                      if (feedModel.contactNo?.isNotEmpty ?? false)
                        const SizedBox(
                          width: 24,
                        ),
                    ],
                  )
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
    if (feedModel.approvalStatus == Constants.PENDING) {
      return Kolors.secondaryColor1;
    } else if (feedModel.approvalStatus == Constants.DECLINED) {
      return Kolors.greyBlue;
    } else if (feedModel.isExpired()) {
      return Kolors.greyBlue;
    } else if (feedModel.approvalStatus == Constants.APPROVED) {
      return Kolors.primaryColor1;
    }
    return Colors.white;
  }

  Widget forAdminEditFeedWidget() {
    return Expanded(
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          CircleIcon(
            icon: 'edit',
            height: 30,
            width: 30,
            onTap: () {},
            color: Colors.white,
            backgroundColor: Kolors.greyBlue,
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  String postedDate() {
    final date =
        intl.DateFormat("d MMM y").format(feedModel.timestamp!.toDate());
    return "POSTED : $date";
  }

  String headerActiveStatus() {
    if (feedModel.approvalStatus == Constants.PENDING) {
      return "APPROVAL PENDING";
    } else if (feedModel.approvalStatus == Constants.DECLINED) {
      if (feedModel.declinedTimestamp == null) return "DECLINED";
      final date = intl.DateFormat("d MMM. y")
          .format(feedModel.declinedTimestamp!.toDate());
      return "DECLINED - $date";
    } else if (feedModel.isExpired()) {
      if (feedModel.expiryDateTime == null) return "EXPIRED";

      final date = intl.DateFormat("d MMM. y")
          .format(feedModel.expiryDateTime!.toDate());
      return "EXPIRED - $date";
    } else if (feedModel.approvalStatus == Constants.APPROVED) {
      if (feedModel.timestamp == null) return "LIVE";

      final date =
          intl.DateFormat("d MMM. y").format(feedModel.timestamp!.toDate());
      return "LIVE SINCE - $date";
    }
    return '';
  }
}
