import 'package:blogs/application/blogs/blogs_bloc.dart';
import 'package:blogs/blogs.dart';
import 'package:blogs/domain/blogs_functions.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/user.dart';
import 'package:share/share.dart';

class BlogLikeWidget extends StatefulWidget {
  final int index;
  final BlogsModel blogsModel;
  final bool isSingleFeedPost;

  const BlogLikeWidget({
    Key? key,
    required this.index,
    required this.blogsModel,
    this.isSingleFeedPost = false,
  }) : super(key: key);

  @override
  State<BlogLikeWidget> createState() => _BlogLikeWidgetState();
}

class _BlogLikeWidgetState extends State<BlogLikeWidget> {
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
                  context.read<BlogsBloc>().add(BlogsEvent.likeSingleBlogPost(
                      blogModel: widget.blogsModel,
                      onChanged: () {
                        setState(() {});
                      }));
                } else {
                  context.read<BlogsBloc>().add(BlogsEvent.likeBlog(
                        userCollege: Getters.getCurrentUserCollege(
                            CoreGetters.getContext),
                        index: widget.index,
                      ));
                }
              },
              child: widget.blogsModel.isLikedByUser()
                  ? likedWidget(widget.blogsModel.likedBy.length)
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
                final link =
                    await BlogDynamicLinks.getBlogShareLink(widget.blogsModel);
                if (link?.isEmpty ?? true) {
                  FlushbarHelper.createError(message: "Something went wrong!")
                      .show(CoreGetters.getContext);
                  return;
                }
                final msg = BlogsFunctions.getFeedShareMessage(
                    link!, widget.blogsModel);
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
