part of 'blogs_bloc.dart';

@freezed
class BlogsState with _$BlogsState {
  const factory BlogsState({
    required bool hasMoreApprovedBlogs,
    required bool hasMoreUserBlogs,
    required bool isApprovedBlogsLoading,
    required bool isUserBlogsLoading,
    required bool fetchMoreApprovedBlogsLoading,
    required bool fetchMoreUserBlogsLoading,
    required Option<Either<FirebaseFailure, String>> blogActionResultOpt,
    required List<BlogsModel> blogsList,
    required List<BlogsModel> publishingBlogsList,
    required List<BlogsModel> userBlogsList,
    required bool isApprovingBlog,
    required bool isDecliningBlog,
    required bool isAddingBlog,
    required bool isDeletingBlog,
    required bool hasMorePublishingBlogs,
    required bool isPublishingBlogsLoading,
    required bool fetchMorePublishingBlogsLoading,
    required List<BlogsModel> approvedBlogsList,
  }) = _BlogsState;
  factory BlogsState.initial() => BlogsState(
        hasMoreApprovedBlogs: true,
        isApprovedBlogsLoading: false,
        fetchMoreApprovedBlogsLoading: false,
        blogActionResultOpt: none(),
        blogsList: [],
        isDecliningBlog: false,
        isApprovingBlog: false,
        isAddingBlog: false,
        isDeletingBlog: false,
        hasMorePublishingBlogs: true,
        isPublishingBlogsLoading: false,
        fetchMorePublishingBlogsLoading: false,
        approvedBlogsList: [],
        publishingBlogsList: [],
        fetchMoreUserBlogsLoading: false,
        hasMoreUserBlogs: true,
        isUserBlogsLoading: false,
        userBlogsList: [],
      );
}
