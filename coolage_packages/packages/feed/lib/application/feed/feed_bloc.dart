import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:feed/domain/i_feed_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:user/user.dart';

import '../../feed.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final IFeedRepository iFeedRepository;
  FeedBloc(this.iFeedRepository) : super(FeedState.initial());

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getApprovedPosts: (e) async* {
        yield state.copyWith(
          isApprovedPostsLoading: true,
          feedActionResultOpt: none(),
          fetchMoreApprovedPostsLoading: false,
        );

        if (e.userCollege.isNotEmpty) {
          final postsListOption = await iFeedRepository.getPosts(e.userCollege,
              status: Constants.APPROVED);

          yield postsListOption.fold(
            (failure) => state.copyWith(
              feedActionResultOpt: some(left(failure)),
              isApprovedPostsLoading: false,
            ),
            (list) {
              bool hasMore = true;
              if (list.length == Constants.FEED_POSTS_LIMIT) {
                hasMore = true;
              } else {
                hasMore = false;
              }
              return state.copyWith(
                approvedPostsList: list,
                isApprovedPostsLoading: false,
                hasMoreApprovedPosts: hasMore,
                feedActionResultOpt: none(),
              );
            },
          );
        } else {
          yield state.copyWith(
            isApprovedPostsLoading: false,
            feedActionResultOpt: some(
              left(FirebaseFailure.customError('Something went wrong!')),
            ),
          );
        }
      },
      getMoreApprovedPosts: (e) async* {
        if (state.hasMoreApprovedPosts &&
            state.approvedPostsList.length >= Constants.FEED_POSTS_LIMIT) {
          yield state.copyWith(
            fetchMoreApprovedPostsLoading: true,
            feedActionResultOpt: none(),
            isApprovedPostsLoading: false,
          );
          final lastItem = state.approvedPostsList.last;

          final postsListOption = await iFeedRepository.getMorePosts(
              e.userCollege, lastItem,
              status: Constants.APPROVED);

          yield postsListOption.fold(
            (failure) => state.copyWith(
              feedActionResultOpt: some(left(failure)),
              fetchMoreApprovedPostsLoading: false,
            ),
            (list) {
              bool hasMore = true;
              if (list.length == Constants.FEED_POSTS_LIMIT) {
                hasMore = true;
              } else {
                hasMore = false;
              }
              List<FeedModel> listPosts = List.from(state.approvedPostsList);
              listPosts.addAll(list);
              return state.copyWith(
                approvedPostsList: listPosts,
                isApprovedPostsLoading: false,
                hasMoreApprovedPosts: hasMore,
                feedActionResultOpt: none(),
                fetchMoreApprovedPostsLoading: false,
              );
            },
          );
        }
      },
      getPublishingPosts: (e) async* {
        yield state.copyWith(
          isPublishingPostsLoading: true,
          feedActionResultOpt: none(),
          fetchMorePublishingPostsLoading: false,
        );

        if (e.userCollege.isNotEmpty) {
          Either<FirebaseFailure, List<FeedModel>> postsListOption =
              await iFeedRepository.getPosts(
            e.userCollege,
            status: e.status,
            date: e.selectedDate,
          );

          yield postsListOption.fold(
            (failure) => state.copyWith(
              feedActionResultOpt: some(left(failure)),
              isPublishingPostsLoading: false,
            ),
            (list) {
              bool hasMore = true;
              if (list.length == Constants.FEED_POSTS_LIMIT) {
                hasMore = true;
              } else {
                hasMore = false;
              }
              return state.copyWith(
                publishingPostsList: list,
                isPublishingPostsLoading: false,
                hasMorePublishingPosts: hasMore,
                feedActionResultOpt: none(),
              );
            },
          );
        } else {
          yield state.copyWith(
            isPublishingPostsLoading: false,
            feedActionResultOpt: some(
              left(FirebaseFailure.customError('Something went wrong!')),
            ),
          );
        }
      },
      getMorePublishingPosts: (e) async* {
        if (state.hasMorePublishingPosts &&
            state.publishingPostsList.length >= Constants.FEED_POSTS_LIMIT) {
          yield state.copyWith(
            fetchMorePublishingPostsLoading: true,
            feedActionResultOpt: none(),
            isPublishingPostsLoading: false,
          );
          final lastItem = state.publishingPostsList.last;

          Either<FirebaseFailure, List<FeedModel>> postsListOption =
              await iFeedRepository.getMorePosts(
            e.userCollege,
            lastItem,
            status: e.status,
            date: e.selectedDate,
          );

          yield postsListOption.fold(
            (failure) => state.copyWith(
              feedActionResultOpt: some(left(failure)),
              fetchMorePublishingPostsLoading: false,
            ),
            (list) {
              bool hasMore = true;
              if (list.length == Constants.FEED_POSTS_LIMIT) {
                hasMore = true;
              } else {
                hasMore = false;
              }
              List<FeedModel> listPosts = List.from(state.publishingPostsList);
              listPosts.addAll(list);
              return state.copyWith(
                publishingPostsList: listPosts,
                isPublishingPostsLoading: false,
                hasMorePublishingPosts: hasMore,
                feedActionResultOpt: none(),
                fetchMorePublishingPostsLoading: false,
              );
            },
          );
        }
      },
      addFeed: (e) async* {
        yield state.copyWith(
          isAddingFeed: true,
          feedActionResultOpt: none(),
        );
        final opt = await iFeedRepository.addFeed(
          e.userCollege!,
          feedModel: e.feedModel!,
          feedImageFile: e.feedImageFile,
          logoImageFile: e.feedLogoFile,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            feedActionResultOpt: some(left(failure)),
            isAddingFeed: false,
          );
        }, (model) {
          if (e.index != null) {
            //edit
            if (FeedCoreFunctionality.isAdmin) {
              state.approvedPostsList
                ..removeAt(e.index!)
                ..insert(e.index!, model);
            } else {
              state.userPostsList
                ..removeAt(e.index!)
                ..insert(e.index!, model);
            }
          } else {
            //adding new
            if (FeedCoreFunctionality.isAdmin) {
              state.approvedPostsList.insert(0, model);
            } else {
              state.userPostsList.insert(0, model);
            }
          }
          final message = e.index != null
              ? "Feed edited successfully"
              : "Feed added successfully";
          return state.copyWith(
            feedActionResultOpt: some(right(message)),
            isAddingFeed: false,
          );
        });
      },
      approveFeed: (e) async* {
        yield state.copyWith(
          isApprovingBlog: true,
          feedActionResultOpt: none(),
        );
        final opt = await iFeedRepository.publishFeed(
          e.userCollege,
          e.feedModel,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            feedActionResultOpt: some(left(failure)),
            isApprovingBlog: false,
          );
        }, (_) {
          final model = state.publishingPostsList[e.index];
          model.approvalStatus = Constants.APPROVED;
          state.publishingPostsList.removeAt(e.index);
          state.approvedPostsList.insert(0, model);

          return state.copyWith(
            feedActionResultOpt: some(right('Post approved successfully!')),
            isApprovingBlog: false,
          );
        });
      },
      declineFeed: (e) async* {
        yield state.copyWith(
          isDecliningBlog: true,
          feedActionResultOpt: none(),
        );
        final opt = await iFeedRepository.declineFeed(
          e.userCollege,
          e.feedModel,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            feedActionResultOpt: some(left(failure)),
            isDecliningBlog: false,
          );
        }, (model) {
          state.publishingPostsList[e.index].approvalStatus =
              Constants.DECLINED;

          return state.copyWith(
            feedActionResultOpt: some(right('Post declined successfully!')),
            isDecliningBlog: false,
          );
        });
      },
      deleteFeed: (e) async* {
        yield state.copyWith(
          isDeletingFeed: true,
          feedActionResultOpt: none(),
        );
        final opt = await iFeedRepository.deleteFeed(
          e.userCollege,
          e.feedModel,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            feedActionResultOpt: some(left(failure)),
            isDeletingFeed: false,
          );
        }, (model) {
          if (state.approvedPostsList.length > e.index) {
            if (state.approvedPostsList[e.index].docId == e.feedModel.docId) {
              state.approvedPostsList.removeAt(e.index);
            }
          }
          if (state.publishingPostsList.length > e.index) {
            if (state.publishingPostsList[e.index].docId == e.feedModel.docId) {
              state.publishingPostsList.removeAt(e.index);
            }
          }
          if (state.userPostsList.length > e.index) {
            if (state.userPostsList[e.index].docId == e.feedModel.docId) {
              state.userPostsList.removeAt(e.index);
            }
          }
          return state.copyWith(
            feedActionResultOpt: some(right('Post deleted successfully!')),
            isDeletingFeed: false,
          );
        });
      },
      getUserPosts: (e) async* {
        yield state.copyWith(
          isUserPostsLoading: true,
          feedActionResultOpt: none(),
          fetchMoreUserPostsLoading: false,
        );

        Either<FirebaseFailure, List<FeedModel>> postsListOption =
            await iFeedRepository.getUserPosts(
          e.coolUser,
          status: e.status,
          date: e.selectedDate,
        );

        yield postsListOption.fold(
          (failure) => state.copyWith(
            feedActionResultOpt: some(left(failure)),
            isUserPostsLoading: false,
          ),
          (list) {
            bool hasMore = true;
            if (list.length == Constants.FEED_POSTS_LIMIT) {
              hasMore = true;
            } else {
              hasMore = false;
            }
            return state.copyWith(
              userPostsList: list,
              isUserPostsLoading: false,
              hasMoreUserPosts: hasMore,
              feedActionResultOpt: none(),
            );
          },
        );
      },
      getMoreUserPosts: (e) async* {
        if (state.hasMoreUserPosts &&
            state.userPostsList.length >= Constants.FEED_POSTS_LIMIT) {
          yield state.copyWith(
            fetchMoreUserPostsLoading: true,
            feedActionResultOpt: none(),
            isUserPostsLoading: false,
          );
          final lastItem = state.userPostsList.last;

          Either<FirebaseFailure, List<FeedModel>> postsListOption =
              await iFeedRepository.getMoreUserPosts(
            e.coolUser,
            lastItem,
            status: e.status,
            date: e.selectedDate,
          );

          yield postsListOption.fold(
            (failure) => state.copyWith(
              feedActionResultOpt: some(left(failure)),
              fetchMoreUserPostsLoading: false,
            ),
            (list) {
              bool hasMore = true;
              if (list.length == Constants.FEED_POSTS_LIMIT) {
                hasMore = true;
              } else {
                hasMore = false;
              }
              List<FeedModel> listPosts = List.from(state.userPostsList);
              state.userPostsList.addAll(list);
              return state.copyWith(
                userPostsList: listPosts,
                isPublishingPostsLoading: false,
                hasMorePublishingPosts: hasMore,
                feedActionResultOpt: none(),
                fetchMorePublishingPostsLoading: false,
              );
            },
          );
        }
      },
    );
  }
}
