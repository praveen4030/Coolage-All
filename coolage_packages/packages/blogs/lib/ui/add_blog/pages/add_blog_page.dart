import 'dart:io';

import 'package:blogs/application/blogs/blogs_bloc.dart';
import 'package:blogs/blogs.dart';
import 'package:blogs/ui/add_blog/widgets/basic_blog_details.dart';
import 'package:blogs/ui/add_blog/widgets/blog_content.dart';
import 'package:blogs/ui/add_blog/widgets/blog_visibility.dart';
import 'package:blogs/ui/add_blog/widgets/publisher_details.dart';
import 'package:blogs/ui/add_blog/widgets/thumbnail_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:college/college.dart';

import 'package:user/user.dart';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddBlogPage extends StatefulWidget {
  final BlogsModel? blogModel;
  final int? index;
  final bool isOpenedFromApproved;
  final bool isNonEditablePublishingMode;
  const AddBlogPage({
    Key? key,
    this.blogModel,
    this.index,
    required this.isOpenedFromApproved,
    this.isNonEditablePublishingMode = false,
  }) : super(key: key);

  @override
  State<AddBlogPage> createState() => _AddBlogPageState();
}

class _AddBlogPageState extends State<AddBlogPage> {
  final formKey = GlobalKey<FormState>();
  bool isEdit = false;
  final titleTEC = TextEditingController();
  final nameTEC = TextEditingController();
  final phoneNoTEC = TextEditingController();
  final summaryTEC = TextEditingController();
  final linkTEC = TextEditingController();
  List<String>? filterTags = [];
  File? file;
  String? imageUrl;
  bool isEditingMode = false;
  int? visibilityIndex;
  @override
  void initState() {
    super.initState();
    if (widget.blogModel != null) {
      isEdit = true;
      titleTEC.text = widget.blogModel!.title!;
      summaryTEC.text = widget.blogModel!.text!;
      nameTEC.text = widget.blogModel!.author ?? '';
      phoneNoTEC.text = widget.blogModel!.authorPhoneNo ?? '';
      linkTEC.text = widget.blogModel!.blogUrl!;
      imageUrl = widget.blogModel!.image!;
      filterTags = widget.blogModel!.filterTags!.sublist(1);
      if (widget.blogModel!.college?.isNotEmpty ?? false) {
        visibilityIndex = 1;
      } else if (widget.blogModel!.city?.isNotEmpty ?? false) {
        visibilityIndex = 2;
      } else if (widget.blogModel!.isPublic!) {
        visibilityIndex = 3;
      }
    } else {
      nameTEC.text = Getters.getCurrentUser(context).name ?? '';
      phoneNoTEC.text = Getters.getCurrentUser(context).phoneNo ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BlogsBloc, BlogsState>(
      listener: (context, state) {
        state.blogActionResultOpt.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                Navigator.of(context).pop();
                FlushbarHelper.createError(message: failure.error)
                    .show(context);
              },
              (msg) {
                Navigator.of(context).pop();
                Fluttertoast.showToast(msg: msg);
              },
            );
          },
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: isEditingMode
                  ? CoolageEditAppBar(
                      text: isEdit ? "Edit Blog" : "Add Blog",
                      onSaveTap: () {
                        onSaveTap(context);
                      },
                      isSaving: state.isAddingBlog,
                    )
                  : CoolageAppBar(
                      actions: const [],
                      text: isEdit ? "Edit Blog" : "Add Blog",
                    ),
            ),
            body: Form(
              key: formKey,
              onChanged: () {
                setState(() {
                  isEditingMode = true;
                });
              },
              child: ListView(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  BasicBlogDetailsWidget(
                    titleTEC: titleTEC,
                    summaryTEC: summaryTEC,
                    tagsList: filterTags,
                    isNonEditablePublishingMode:
                        widget.isNonEditablePublishingMode,
                    onChange: () {
                      setState(() {
                        isEditingMode = true;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ThumbnailWidget(
                    file: file,
                    imageUrl: imageUrl,
                    isNonEditablePublishingMode:
                        widget.isNonEditablePublishingMode,
                    changeFileFn: (fileNew) {
                      setState(() {
                        file = fileNew;
                        isEditingMode = true;
                      });
                    },
                    removePhotoFn: () {
                      setState(() {
                        imageUrl = '';
                        file = null;
                        isEditingMode = true;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  PublisherDetailsWidget(
                    phoneNoTEC: phoneNoTEC,
                    nameTEC: nameTEC,
                    isNonEditablePublishingMode:
                        widget.isNonEditablePublishingMode,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  BlogContentWidget(
                    linkTEC: linkTEC,
                    isNonEditablePublishingMode:
                        widget.isNonEditablePublishingMode,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  BlogVisibilityWidget(
                    isNonEditablePublishingMode:
                        widget.isNonEditablePublishingMode,
                    visibilityIndex: visibilityIndex,
                    onVisibilityChange: (index) {
                      setState(() {
                        visibilityIndex = index as int;
                      });
                    },
                  ),
                  if (isEdit)
                    const SizedBox(
                      height: 24,
                    ),
                  if (isEdit &&
                      widget.blogModel!.postedByUid ==
                          Getters.getCurrentUserUid() &&
                      !widget.isNonEditablePublishingMode)
                    DeleteTile(
                      isDeleting: state.isDeletingBlog,
                      onTap: () {
                        if (widget.blogModel!.postedByUid !=
                                Getters.getCurrentUserUid() &&
                            widget.isNonEditablePublishingMode) {
                          return;
                        }
                        context.read<BlogsBloc>().add(BlogsEvent.deleteBlog(
                              userCollege:
                                  Getters.getCurrentUserCollege(context),
                              blogModel: widget.blogModel!,
                              index: widget.index!,
                              isDeletedFromApproved:
                                  widget.isOpenedFromApproved,
                            ));
                      },
                      text: "Delete this Blog Post",
                    ),
                  SizedBox(
                    height: ((widget.blogModel?.isPending() ?? false) &&
                            BlogCoreFunctionality.isAdmin)
                        ? 120
                        : 28,
                  ),
                ],
              ),
            ),
            bottomSheet: !isEdit
                ? null
                : (widget.blogModel!.isPending() &&
                        BlogCoreFunctionality.isAdmin)
                    ? bottomSheat(state.isDecliningBlog, state.isApprovingBlog)
                    : null,
          ),
        );
      },
    );
  }

  Widget bottomSheat(bool isDeclineLoading, bool isApproveLoading) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: Kolors.greyBlue.withOpacity(0.5),
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: BorderButton(
              height: 50,
              isLoading: isDeclineLoading,
              onTap: () {
                context.read<BlogsBloc>().add(
                      BlogsEvent.declineBlog(
                          blogModel: widget.blogModel!,
                          index: widget.index!,
                          userCollege: Getters.getCurrentUserCollege(context)),
                    );
              },
              text: "DECLINE",
              color: Kolors.redPrimaryColor,
              fontColor: Kolors.redPrimaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontFamily: Fonts.HEADING_FONT,
              borderRadius: 8,
            ),
          ),
          const SizedBox(
            width: 48,
          ),
          Expanded(
            child: ButtonWid(
              isLoading: isApproveLoading,
              height: 50,
              onTap: () {
                context.read<BlogsBloc>().add(BlogsEvent.approveBlog(
                    blogModel: widget.blogModel!,
                    index: widget.index!,
                    userCollege: Getters.getCurrentUserCollege(context)));
              },
              text: "PUBLISH",
              color: Kolors.primaryColor1,
              fontColor: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontFamily: Fonts.HEADING_FONT,
              borderRadius: 8,
            ),
          ),
        ],
      ),
    );
  }

  void onSaveTap(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (file == null && (imageUrl?.isEmpty ?? true)) {
        Fluttertoast.showToast(msg: "Please select image to continue");
        return;
      } else if (visibilityIndex == null) {
        Fluttertoast.showToast(msg: "Please select blog visibility!");
        return;
      }
      final List<String> filterTagsNew = filterTags ?? [];
      if (visibilityIndex == 1) {
        filterTagsNew.insert(0, Getters.getCurrentUserCollege(context));
      } else if (visibilityIndex == 2) {
        filterTagsNew.insert(
            0, CollegeGetters.getCurrentUserCollegeCity(context));
      } else if (visibilityIndex == 3) {
        filterTagsNew.insert(0, "Public");
      }
      try {
        final model = BlogsModel(
          postedByUid: Getters.getCurrentUserUid(),
          postedByUserCollege: Getters.getCurrentUserCollege(context),
          title: titleTEC.text,
          text: summaryTEC.text,
          blogUrl: linkTEC.text,
          author: nameTEC.text,
          authorPhoneNo: phoneNoTEC.text,
          image: isEdit ? widget.blogModel!.image : '',
          timestamp: Timestamp.now(),
          docId: isEdit ? widget.blogModel!.docId : null,
          viewsCount: 0,
          isPublic: visibilityIndex == 3,
          filterTags: filterTagsNew,
          college: visibilityIndex == 1
              ? Getters.getCurrentUserCollege(context)
              : '',
          city: visibilityIndex == 2
              ? CollegeGetters.getCurrentUserCollegeCity(context)
              : '',
          approvalStatus: BlogCoreFunctionality.isAdmin
              ? Constants.APPROVED
              : Constants.PENDING,
        );
        context.read<BlogsBloc>().add(
              BlogsEvent.addBlog(
                userCollege: Getters.getCurrentUserCollege(context),
                blogModel: model,
                index: widget.index,
                file: file,
              ),
            );
      } catch (e) {
        Fluttertoast.showToast(msg: "Something went wrong!");
      }
    }
  }
}
