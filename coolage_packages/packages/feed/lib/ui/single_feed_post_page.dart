import 'package:core/core.dart';
import 'package:feed/feed.dart';
import 'package:flutter/material.dart';

class SingleFeedPostPage extends StatelessWidget {
  final FeedModel feedModel;
  const SingleFeedPostPage({
    Key? key,
    required this.feedModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Kolors.greyWhite,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: CoolageAppBar(
            backgroundColor: Kolors.greyWhite,
            actions: [],
            text: '',
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FeedTile(
            feedModel: feedModel,
            isOpenedFromApproved: true,
            index: 0,
            isSingleFeedPost: true,
          ),
        ),
      ),
    );
  }
}
