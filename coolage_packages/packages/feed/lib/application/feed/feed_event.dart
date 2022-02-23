part of 'feed_bloc.dart';

@freezed
abstract class FeedEvent with _$FeedEvent {
  const factory FeedEvent.getApprovedPosts({required String userCollege}) =
      _GetApprovedPosts;
  const factory FeedEvent.getMoreApprovedPosts({required String userCollege}) =
      _GetMoreApprovedPosts;

  const factory FeedEvent.getPublishingPosts({
    required String userCollege,
    String? status,
    DateTime? selectedDate,
  }) = _GetPublishingPosts;
  const factory FeedEvent.getMorePublishingPosts({
    required String userCollege,
    String? status,
    DateTime? selectedDate,
  }) = _GetMorePublishingPosts;

  const factory FeedEvent.getUserPosts({
    required CoolUser coolUser,
    String? status,
    DateTime? selectedDate,
  }) = _GetUserPosts;
  const factory FeedEvent.getMoreUserPosts({
    required CoolUser coolUser,
    String? status,
    DateTime? selectedDate,
  }) = _GetMoreUserPosts;

  const factory FeedEvent.addFeed({
    String? userCollege,
    FeedModel? feedModel,
    File? feedImageFile,
    File? feedLogoFile,
    int? index,
  }) = _AddFeed;
  const factory FeedEvent.deleteFeed({
    required String userCollege,
    required FeedModel feedModel,
    required int index,
    //else from published
    required bool isDeletedFromApproved,
  }) = _DeleteFeed;
  const factory FeedEvent.declineFeed({
    required String userCollege,
    required FeedModel feedModel,
    required int index,
  }) = _DeclineFeed;
  const factory FeedEvent.approveFeed({
    required String userCollege,
    required FeedModel feedModel,
    required int index,
  }) = _ApproveFeed;
  const factory FeedEvent.likeFeed({
    required String userCollege,
    required int index,
  }) = _LikeFeed;
  const factory FeedEvent.likeSingleFeedPost({
    required String userCollege,
    required FeedModel feedModel,
    required Function onChanged,
  }) = _LikeSingleFeedPost;
}
