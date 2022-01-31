// part of blogs;

import 'dart:io';

import 'package:blogs/blogs.dart';
import 'package:blogs/domain/i_blog_repository.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:user/user.dart';

part 'blogs_event.dart';
part 'blogs_state.dart';
part 'blogs_bloc.freezed.dart';

@injectable
class BlogsBloc extends Bloc<BlogsEvent, BlogsState> {
  final IBlogRepository iBlogRepository;
  BlogsBloc(this.iBlogRepository) : super(BlogsState.initial());

  @override
  Stream<BlogsState> mapEventToState(
    BlogsEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getBlogs: (e) async* {
        yield state.copyWith(
          isApprovedBlogsLoading: true,
          hasMoreApprovedBlogs: true,
          blogActionResultOpt: none(),
        );

        final opt = await iBlogRepository.getBlogs(
          e.selectedTags!,
          city: e.city,
          college: e.college,
          status: Constants.APPROVED,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            blogActionResultOpt: some(left(failure)),
            isApprovedBlogsLoading: false,
            hasMoreApprovedBlogs: false,
          );
        }, (blogsList) {
          bool hasMoreApprovedBlogs = true;
          if (blogsList.length == Constants.BLOGS_LIMIT) {
            hasMoreApprovedBlogs = true;
          } else {
            hasMoreApprovedBlogs = false;
          }
          return state.copyWith(
            blogActionResultOpt: none(),
            isApprovedBlogsLoading: false,
            blogsList: blogsList,
            hasMoreApprovedBlogs: hasMoreApprovedBlogs,
          );
        });
      },
      getMoreBlogs: (e) async* {
        if (state.hasMoreApprovedBlogs &&
            state.blogsList.length >= Constants.BLOGS_LIMIT) {
          yield state.copyWith(
            fetchMoreApprovedBlogsLoading: true,
            hasMoreApprovedBlogs: true,
            blogActionResultOpt: none(),
          );

          final lastItem = state.blogsList.last;
          final opt = await iBlogRepository.getMoreBlogs(
            e.selectedTags!,
            lastItem,
            city: e.city,
            college: e.college,
          );
          yield opt.fold((failure) {
            return state.copyWith(
              blogActionResultOpt: some(left(failure)),
              fetchMoreApprovedBlogsLoading: false,
              hasMoreApprovedBlogs: false,
            );
          }, (blogsList) {
            bool hasMoreApprovedBlogs = true;
            if (blogsList.length == Constants.BLOGS_LIMIT) {
              hasMoreApprovedBlogs = true;
            } else {
              hasMoreApprovedBlogs = false;
            }
            final updatedBlogsList = List<BlogsModel>.from(state.blogsList)
              ..addAll(blogsList);
            return state.copyWith(
              blogActionResultOpt: none(),
              fetchMoreApprovedBlogsLoading: false,
              blogsList: updatedBlogsList,
              hasMoreApprovedBlogs: hasMoreApprovedBlogs,
            );
          });
        }
      },
      getPublishingBlogs: (e) async* {
        yield state.copyWith(
          isPublishingBlogsLoading: true,
          hasMorePublishingBlogs: true,
          blogActionResultOpt: none(),
        );

        final opt = await iBlogRepository.getBlogs(
          [],
          college: e.userCollege,
          status: e.status,
          isGettingPostedByCollegeBlogs: true,
          date: e.selectedDate,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            blogActionResultOpt: some(left(failure)),
            isPublishingBlogsLoading: false,
            hasMorePublishingBlogs: false,
          );
        }, (blogsList) {
          bool hasMorePublishingBlogs = true;
          if (blogsList.length == Constants.BLOGS_LIMIT) {
            hasMorePublishingBlogs = true;
          } else {
            hasMorePublishingBlogs = false;
          }
          return state.copyWith(
            blogActionResultOpt: none(),
            isPublishingBlogsLoading: false,
            publishingBlogsList: blogsList,
            hasMorePublishingBlogs: hasMorePublishingBlogs,
          );
        });
      },
      getMorePublishingBlogs: (e) async* {
        if (state.hasMorePublishingBlogs &&
            state.publishingBlogsList.length >= Constants.BLOGS_LIMIT) {
          yield state.copyWith(
            fetchMorePublishingBlogsLoading: true,
            hasMorePublishingBlogs: true,
            blogActionResultOpt: none(),
          );

          final lastItem = state.publishingBlogsList.last;
          final opt = await iBlogRepository.getMoreBlogs(
            [],
            lastItem,
            college: e.userCollege,
            status: e.status,
            isGettingPostedByCollegeBlogs: true,
            date: e.selectedDate,
          );
          yield opt.fold((failure) {
            return state.copyWith(
              blogActionResultOpt: some(left(failure)),
              fetchMorePublishingBlogsLoading: false,
              hasMorePublishingBlogs: false,
            );
          }, (publishingBlogsList) {
            bool hasMorePublishingBlogs = true;
            if (publishingBlogsList.length == Constants.BLOGS_LIMIT) {
              hasMorePublishingBlogs = true;
            } else {
              hasMorePublishingBlogs = false;
            }
            final updatedpublishingBlogsList =
                List<BlogsModel>.from(state.publishingBlogsList)
                  ..addAll(publishingBlogsList);
            return state.copyWith(
              blogActionResultOpt: none(),
              fetchMorePublishingBlogsLoading: false,
              publishingBlogsList: updatedpublishingBlogsList,
              hasMorePublishingBlogs: hasMorePublishingBlogs,
            );
          });
        }
      },
      addBlog: (e) async* {
        yield state.copyWith(
          isAddingBlog: true,
          blogActionResultOpt: none(),
        );
        final opt = await iBlogRepository.addBlog(e.userCollege!,
            blogsModel: e.blogModel!, file: e.file);
        yield opt.fold((failure) {
          return state.copyWith(
            blogActionResultOpt: some(left(failure)),
            isAddingBlog: false,
          );
        }, (model) {
          if (e.index != null) {
            //edit
            if (BlogCoreFunctionality.isAdmin) {
              state.blogsList
                ..removeAt(e.index!)
                ..insert(e.index!, model);
            } else {
              state.userBlogsList
                ..removeAt(e.index!)
                ..insert(e.index!, model);
            }
          } else {
            //adding new
            if (BlogCoreFunctionality.isAdmin) {
              state.blogsList.insert(0, model);
            } else {
              state.userBlogsList.insert(0, model);
            }
          }
          final msg = e.index != null
              ? 'Blog modified successfully !'
              : "Blog added successfully!";
          return state.copyWith(
            blogActionResultOpt: some(right(msg)),
            isAddingBlog: false,
          );
        });
      },
      deleteBlog: (e) async* {
        yield state.copyWith(
          isDeletingBlog: true,
          blogActionResultOpt: none(),
        );
        final opt = await iBlogRepository.deleteBlog(
          e.userCollege,
          e.blogModel,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            blogActionResultOpt: some(left(failure)),
            isDeletingBlog: false,
          );
        }, (model) {
          if (state.blogsList.length > e.index) {
            if (state.blogsList[e.index].docId == e.blogModel.docId) {
              state.blogsList.removeAt(e.index);
            }
          }
          if (state.userBlogsList.length > e.index) {
            if (state.userBlogsList[e.index].docId == e.blogModel.docId) {
              state.userBlogsList.removeAt(e.index);
            }
          }
          if (state.publishingBlogsList.length > e.index) {
            if (state.publishingBlogsList[e.index].docId == e.blogModel.docId) {
              state.publishingBlogsList.removeAt(e.index);
            }
          }
          return state.copyWith(
            blogActionResultOpt: some(right('Blog deleted successfully !')),
            isDeletingBlog: false,
          );
        });
      },
      approveBlog: (e) async* {
        yield state.copyWith(
          isApprovingBlog: true,
          blogActionResultOpt: none(),
        );
        final opt = await iBlogRepository.publishBlog(
          e.userCollege,
          e.blogModel,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            blogActionResultOpt: some(left(failure)),
            isApprovingBlog: false,
          );
        }, (_) {
          final model = state.publishingBlogsList[e.index];
          model.approvalStatus = Constants.APPROVED;
          state.publishingBlogsList.removeAt(e.index);
          state.blogsList.insert(0, model);

          return state.copyWith(
            blogActionResultOpt: some(right('Post approved successfully!')),
            isApprovingBlog: false,
          );
        });
      },
      declineBlog: (e) async* {
        yield state.copyWith(
          isDeletingBlog: true,
          blogActionResultOpt: none(),
        );
        final opt = await iBlogRepository.declineBlog(
          e.userCollege,
          e.blogModel,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            blogActionResultOpt: some(left(failure)),
            isDeletingBlog: false,
          );
        }, (model) {
          state.publishingBlogsList[e.index].approvalStatus =
              Constants.DECLINED;

          return state.copyWith(
            blogActionResultOpt: some(right('Blog declined successfully!')),
            isDeletingBlog: false,
          );
        });
      },
      getUserBlogs: (e) async* {
        yield state.copyWith(
          isUserBlogsLoading: true,
          hasMoreUserBlogs: true,
          blogActionResultOpt: none(),
        );

        final opt = await iBlogRepository.getUserBlogs(
          e.coolUser,
          status: e.status,
          date: e.selectedDate,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            blogActionResultOpt: some(left(failure)),
            isUserBlogsLoading: false,
            hasMoreUserBlogs: false,
          );
        }, (blogsList) {
          bool hasMoreUserBlogs = true;
          if (blogsList.length == Constants.BLOGS_LIMIT) {
            hasMoreUserBlogs = true;
          } else {
            hasMoreUserBlogs = false;
          }
          return state.copyWith(
            blogActionResultOpt: none(),
            isUserBlogsLoading: false,
            userBlogsList: blogsList,
            hasMoreUserBlogs: hasMoreUserBlogs,
          );
        });
      },
      getMoreUserBlogs: (e) async* {
        if (state.hasMoreUserBlogs &&
            state.userBlogsList.length >= Constants.BLOGS_LIMIT) {
          yield state.copyWith(
            fetchMoreUserBlogsLoading: true,
            hasMoreUserBlogs: true,
            blogActionResultOpt: none(),
          );

          final lastItem = state.userBlogsList.last;
          final opt = await iBlogRepository.getMoreUserBlogs(
            e.coolUser,
            lastItem,
            status: e.status,
            date: e.selectedDate,
          );
          yield opt.fold((failure) {
            return state.copyWith(
              blogActionResultOpt: some(left(failure)),
              fetchMoreUserBlogsLoading: false,
              hasMoreUserBlogs: false,
            );
          }, (userBlogsList) {
            bool hasMoreUserBlogs = true;
            if (userBlogsList.length == Constants.BLOGS_LIMIT) {
              hasMoreUserBlogs = true;
            } else {
              hasMoreUserBlogs = false;
            }
            final updatedUserBlogsList =
                List<BlogsModel>.from(state.userBlogsList)
                  ..addAll(userBlogsList);
            return state.copyWith(
              blogActionResultOpt: none(),
              fetchMoreUserBlogsLoading: false,
              userBlogsList: updatedUserBlogsList,
              hasMoreUserBlogs: hasMoreUserBlogs,
            );
          });
        }
      },
    );
  }
}
