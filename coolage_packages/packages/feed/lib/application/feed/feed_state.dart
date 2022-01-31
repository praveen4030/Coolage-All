part of 'feed_bloc.dart';

@freezed
abstract class FeedState with _$FeedState {
  const factory FeedState({
    required bool hasMoreApprovedPosts,
    required bool hasMorePublishingPosts,
    required bool hasMoreUserPosts,
    required bool isApprovedPostsLoading,
    required bool isPublishingPostsLoading,
    required bool isUserPostsLoading,
    required List<FeedModel> publishingPostsList,
    required List<FeedModel> approvedPostsList,
    required List<FeedModel> userPostsList,

    //this loading will be used when adding posts
    required bool fetchMoreApprovedPostsLoading,
    required bool fetchMorePublishingPostsLoading,
    required bool fetchMoreUserPostsLoading,
    required bool isApprovingBlog,
    required bool isDecliningBlog,
    required bool isAddingFeed,
    required Option<Either<FirebaseFailure, String>> feedActionResultOpt,
    required bool isDeletingFeed,
  }) = _FeedState;

//feed actions are publish decline add edit

  factory FeedState.initial() => FeedState(
        approvedPostsList: [],
        publishingPostsList: [],
        hasMoreApprovedPosts: true,
        hasMorePublishingPosts: true,
        isApprovedPostsLoading: false,
        isPublishingPostsLoading: false,
        fetchMoreApprovedPostsLoading: false,
        fetchMorePublishingPostsLoading: false,
        isDecliningBlog: false,
        isApprovingBlog: false,
        isDeletingFeed: false,
        isAddingFeed: false,
        feedActionResultOpt: none(),
        fetchMoreUserPostsLoading: false,
        hasMoreUserPosts: true,
        isUserPostsLoading: false,
        userPostsList: [],
      );
}
