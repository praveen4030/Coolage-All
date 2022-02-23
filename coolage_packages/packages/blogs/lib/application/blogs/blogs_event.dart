part of 'blogs_bloc.dart';

@freezed
class BlogsEvent with _$BlogsEvent {
  const factory BlogsEvent.getBlogs({
    List<String>? selectedTags,
    String? city,
    String? college,
  }) = _GetBlogs;
  const factory BlogsEvent.getMoreBlogs({
    List<String>? selectedTags,
    String? city,
    String? college,
  }) = _GetMoreBlogs;

  const factory BlogsEvent.getPublishingBlogs({
    required String userCollege,
    String? status,
    DateTime? selectedDate,
  }) = _GetPublishingBlogs;
  const factory BlogsEvent.getMorePublishingBlogs({
    required String userCollege,
    String? status,
    DateTime? selectedDate,
  }) = _GetMorePublishingPosts;

  const factory BlogsEvent.getUserBlogs({
    required CoolUser coolUser,
    String? status,
    DateTime? selectedDate,
  }) = _GetUserBlogs;
  const factory BlogsEvent.getMoreUserBlogs({
    required CoolUser coolUser,
    String? status,
    DateTime? selectedDate,
  }) = _GetMoreUserBlogs;
  const factory BlogsEvent.addBlog({
    String? userCollege,
    BlogsModel? blogModel,
    File? file,
    int? index,
  }) = _AddBlog;
  const factory BlogsEvent.deleteBlog({
    required String userCollege,
    required BlogsModel blogModel,
    required int index,
    required bool isDeletedFromApproved,
  }) = _DeleteBlog;
  const factory BlogsEvent.declineBlog({
    required String userCollege,
    required BlogsModel blogModel,
    required int index,
  }) = _DeclineBlog;
  const factory BlogsEvent.approveBlog({
    required String userCollege,
    required BlogsModel blogModel,
    required int index,
  }) = _ApproveBlog;

  const factory BlogsEvent.likeBlog({
    required String userCollege,
    required int index,
  }) = _LikeBlog;
  const factory BlogsEvent.likeSingleBlogPost({
    required BlogsModel blogModel,
    required Function onChanged,
  }) = _LikeSingleBlogPost;
}
