import 'package:core/core.dart';
import 'package:feed/application/feed/feed_bloc.dart';
import 'package:feed/domain/feed_functions.dart';
import 'package:feed/feed.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';
import 'package:user/user.dart';

class FeedLikeWidget extends StatefulWidget {
  final int index;
  final FeedModel feedModel;
  final bool isSingleFeedPost;

  const FeedLikeWidget({
    Key? key,
    required this.index,
    required this.feedModel,
    this.isSingleFeedPost = false,
  }) : super(key: key);

  @override
  State<FeedLikeWidget> createState() => _FeedLikeWidgetState();
}

class _FeedLikeWidgetState extends State<FeedLikeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Kolors.greyWhite,
        boxShadow: [
          BoxShadow(
            color: Kolors.greyBlue.withOpacity(0.5),
            blurRadius: 4,
          ),
        ],
      ),
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      width: 112,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (widget.isSingleFeedPost) {
                  context.read<FeedBloc>().add(FeedEvent.likeSingleFeedPost(
                      userCollege:
                          Getters.getCurrentUserCollege(CoreGetters.getContext),
                      feedModel: widget.feedModel,
                      onChanged: () {
                        setState(() {});
                      }));
                } else {
                  context.read<FeedBloc>().add(FeedEvent.likeFeed(
                        userCollege: Getters.getCurrentUserCollege(
                            CoreGetters.getContext),
                        index: widget.index,
                      ));
                }
              },
              child: widget.feedModel.isLikedByUser()
                  ? likedWidget(widget.feedModel.likedBy.length)
                  : const IconImagesWid(
                      iconName: 'like.png',
                      height: 24,
                      width: 24,
                      color: Kolors.greyBlue,
                    ),
            ),
          ),
          Container(
            width: 1,
            color: Kolors.greyBlue.withOpacity(0.5),
          ),
          Expanded(
            child: InkWell(
              onTap: () async {
                final link = await FeedDynamicLinks.getFeedShareLink(
                    Getters.getCurrentUserCollege(context), widget.feedModel);
                if (link?.isEmpty ?? true) {
                  FlushbarHelper.createError(message: "Something went wrong!")
                      .show(CoreGetters.getContext);
                  return;
                }
                final msg =
                    FeedFunctions.getFeedShareMessage(link!, widget.feedModel);
                Share.share(msg);
              },
              child: const IconImagesWid(
                iconName: 'forward.png',
                height: 24,
                width: 24,
                color: Kolors.greyBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget likedWidget(int likeCount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const IconImagesWid(
              iconName: 'liked.png',
              height: 12,
              width: 12,
              color: Kolors.greyBlue,
            ),
            CustomText(
              text: likeCount.toString(),
              fontSize: 9,
              color: Kolors.greyBlue,
            ),
          ],
        ),
        const CustomText(
          text: "like this",
          fontSize: 9,
          color: Kolors.greyBlue,
        ),
      ],
    );
  }
}
