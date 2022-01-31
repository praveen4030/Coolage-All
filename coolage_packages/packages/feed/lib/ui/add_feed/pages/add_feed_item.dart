import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:feed/application/feed/feed_bloc.dart';
import 'package:feed/domain/feed_functions.dart';
import 'package:feed/feed.dart';
import 'package:feed/ui/add_feed/widgets/action_buttons_feed.dart';
import 'package:feed/ui/add_feed/widgets/feed_details.dart';
import 'package:feed/ui/add_feed/widgets/feed_expiry.dart';
import 'package:feed/ui/add_feed/widgets/publisher_details.dart';
import 'package:feed/ui/add_feed/widgets/publish_feed.dart';
import 'package:feed/ui/add_feed/widgets/thumbnail_feed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/user.dart';

class AddFeedItemPage extends StatefulWidget {
  final FeedModel? feedModel;
  final int? index;
  final bool isOpenedFromApproved;
  final bool isNonEditablePublishingMode;
  const AddFeedItemPage({
    Key? key,
    this.feedModel,
    this.index,
    required this.isOpenedFromApproved,
    this.isNonEditablePublishingMode = false,
  }) : super(key: key);

  @override
  State<AddFeedItemPage> createState() => _AddFeedItemPageState();
}

class _AddFeedItemPageState extends State<AddFeedItemPage> {
  bool isEdit = false;
  final titleTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final summaryTEC = TextEditingController();
  final publisherNameTEC = TextEditingController();
  final publisherContactTEC = TextEditingController();
  final actionPhoneTEC = TextEditingController();
  final actionRedirectLinkTEC = TextEditingController();
  bool isEditingMode = false;
  File? feedImageFile;
  String? feedImageUrl;
  DateTime? expiryDateTime;
  List<String> publishTags = [];
  String? category;
  String? categoryIcon;
  File? logoFile;
  String? logoImageUrl;
  String? approvalStatus;
  @override
  void initState() {
    super.initState();
    if (widget.feedModel != null) {
      isEdit = true;
      titleTEC.text = widget.feedModel!.title!;
      summaryTEC.text = widget.feedModel!.caption!;
      publisherNameTEC.text = widget.feedModel!.postedBy!;
      publisherContactTEC.text = widget.feedModel!.postedByPhoneNo!;
      actionPhoneTEC.text = widget.feedModel!.contactNo!;
      actionRedirectLinkTEC.text = widget.feedModel!.redirectUrl!;
      expiryDateTime = widget.feedModel!.expiryDateTime?.toDate();
      publishTags = widget.feedModel!.publishTags ?? [];
      category = widget.feedModel!.addedByCategory;
      logoImageUrl = widget.feedModel!.categoryIcon ?? '';
      feedImageUrl = widget.feedModel!.image ?? '';
      approvalStatus = widget.feedModel!.approvalStatus ?? '';
      categoryIcon = Functions.getFeedIcon(category!);
    } else {
      publisherNameTEC.text = Getters.getCurrentUser(context).name ?? '';
      publisherContactTEC.text = Getters.getCurrentUser(context).phoneNo ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeedBloc, FeedState>(
      listener: (context, state) {
        state.feedActionResultOpt.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                Navigator.of(context).pop();
                FlushbarHelper.createError(message: failure.error)
                    .show(context);
              },
              (message) {
                if (widget.feedModel == null) {
                  Navigator.of(context).pop();
                  Fluttertoast.showToast(msg: message);
                } else {
                  Navigator.of(context).pop();
                  Fluttertoast.showToast(msg: message);
                }
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
                      text: isEdit ? "Edit Feed" : "Add Feed",
                      onSaveTap: () {
                        onSaveTap(context);
                      },
                      isSaving: state.isAddingFeed,
                    )
                  : CoolageAppBar(
                      isCenter: true,
                      backgroundColor: Kolors.greyWhite,
                      actions: const [],
                      text: isEdit ? "Edit Feed" : "Add Feed",
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
                  FeedDetailsWidget(
                    titleTEC: titleTEC,
                    summaryTEC: summaryTEC,
                    category: category,
                    selectCategoryFn: (value) {
                      setState(() {
                        category = value as String;
                        categoryIcon = Functions.getFeedIcon(category!);
                      });
                    },
                    isNonEditablePublishingMode:
                        widget.isNonEditablePublishingMode,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ThumbnailFeedWidget(
                    isNonEditablePublishingMode:
                        widget.isNonEditablePublishingMode,
                    file: logoFile,
                    imageUrl: logoImageUrl,
                    category: category,
                    categoryIcon: categoryIcon,
                    changeFileFn: (fileNew) {
                      setState(() {
                        logoFile = fileNew;
                        isEditingMode = true;
                      });
                    },
                    removePhotoFn: () {
                      setState(() {
                        logoImageUrl = '';
                        logoFile = null;
                        isEditingMode = true;
                        categoryIcon = null;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  PublisherDetailsFeedWidget(
                    isNonEditablePublishingMode:
                        widget.isNonEditablePublishingMode,
                    publisherContactTEC: publisherContactTEC,
                    publisherNameTEC: publisherNameTEC,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ActionButtonsFeedWidget(
                    isNonEditablePublishingMode:
                        widget.isNonEditablePublishingMode,
                    redirectLinkTEC: actionRedirectLinkTEC,
                    phoneTEC: actionPhoneTEC,
                    file: feedImageFile,
                    imageUrl: feedImageUrl,
                    changeFileFn: (fileNew) {
                      setState(() {
                        feedImageFile = fileNew;
                        isEditingMode = true;
                      });
                    },
                    removePhotoFn: () {
                      setState(() {
                        feedImageUrl = '';
                        feedImageFile = null;
                        isEditingMode = true;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  PublishFeedWidget(
                    isNonEditablePublishingMode:
                        widget.isNonEditablePublishingMode,
                    selectedGroupsList: publishTags,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  FeedExpiryWidget(
                    isNonEditablePublishingMode:
                        widget.isNonEditablePublishingMode,
                    expiryDateTime: expiryDateTime,
                    selectExpiryDateTime: (date) {
                      setState(() {
                        expiryDateTime = date as DateTime;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  if (isEdit &&
                      (!FeedCoreFunctionality.isAdmin ||
                          widget.feedModel!.isApproved()))
                    Container(
                      margin: const EdgeInsets.only(top: 24, bottom: 32),
                      child: DeleteTile(
                        isDeleting: state.isDeletingFeed,
                        onTap: () {
                          if (widget.feedModel!.postedByUid !=
                                  Getters.getCurrentUserUid() &&
                              widget.isNonEditablePublishingMode) {
                            return;
                          }

                          context.read<FeedBloc>().add(FeedEvent.deleteFeed(
                                userCollege:
                                    Getters.getCurrentUserCollege(context),
                                feedModel: widget.feedModel!,
                                index: widget.index!,
                                isDeletedFromApproved:
                                    widget.isOpenedFromApproved,
                              ));
                        },
                        text: "Delete this Feed Post",
                      ),
                    ),
                  SizedBox(
                    height: ((widget.feedModel?.isPending() ?? false) &&
                            FeedCoreFunctionality.isAdmin)
                        ? 120
                        : 28,
                  ),
                ],
              ),
            ),
            bottomSheet: !isEdit
                ? null
                : (widget.feedModel!.isPending() &&
                        FeedCoreFunctionality.isAdmin)
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
              isLoading: isDeclineLoading,
              height: 50,
              onTap: () {
                context.read<FeedBloc>().add(FeedEvent.declineFeed(
                    feedModel: widget.feedModel!,
                    index: widget.index!,
                    userCollege: Getters.getCurrentUserCollege(context)));
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
                context.read<FeedBloc>().add(FeedEvent.approveFeed(
                    feedModel: widget.feedModel!,
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
      if (category?.isEmpty ?? true) {
        Fluttertoast.showToast(msg: "Please select category to continue");
        return;
      }
      FeedFunctions.filterPublishTags(publishTags);
      if (publishTags.isEmpty) {
        Fluttertoast.showToast(msg: "Please select publishing details!");
        return;
      }
      if ((!publishTags.contains("All")) &&
          (!FeedFunctions.checkIfAnyGroupSelected(publishTags))) {
        Fluttertoast.showToast(msg: "Please select publishing details!");
        return;
      }

      try {
        final model = FeedModel(
          title: titleTEC.text,
          caption: summaryTEC.text,
          addedByName: publisherNameTEC.text,
          docId: isEdit ? widget.feedModel!.docId : null,
          timestamp: isEdit ? widget.feedModel!.timestamp : Timestamp.now(),
          categoryIcon: logoImageUrl,
          addedByCategory: category,
          postedBy: publisherNameTEC.text,
          postedByPhoneNo: publisherContactTEC.text,
          postedByUid: isEdit
              ? widget.feedModel!.postedByUid
              : Getters.getCurrentUserUid(),
          contactNo: actionPhoneTEC.text,
          redirectUrl: actionRedirectLinkTEC.text,
          image: feedImageUrl,
          expiryDateTime: expiryDateTime != null
              ? Timestamp.fromDate(expiryDateTime!)
              : null,
          publishTags: publishTags,
          approvalStatus: isEdit
              ? Constants.PENDING
              : FeedCoreFunctionality.isAdmin
                  ? Constants.APPROVED
                  : Constants.PENDING,
        );

        context.read<FeedBloc>().add(
              FeedEvent.addFeed(
                userCollege: Getters.getCurrentUserCollege(context),
                feedModel: model,
                index: widget.index,
                feedImageFile: feedImageFile,
                feedLogoFile: logoFile,
              ),
            );
      } catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      }
    }
  }
}
