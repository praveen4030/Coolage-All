import 'dart:io';

import 'package:college/application/college/college_bloc.dart';
import 'package:college/college.dart';
import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/user.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flushbar/flushbar_helper.dart';

class AddOfficialLinkDialog extends StatefulWidget {
  final OfficialLinks? officialLinks;
  final int? index;
  const AddOfficialLinkDialog({
    Key? key,
    this.officialLinks,
    this.index,
  }) : super(key: key);

  @override
  State<AddOfficialLinkDialog> createState() => _AddOfficialLinkDialogState();
}

class _AddOfficialLinkDialogState extends State<AddOfficialLinkDialog> {
  final formKey = GlobalKey<FormState>();
  final titleTEC = TextEditingController();

  final linkTEC = TextEditingController();
  File? logoFile;
  String? logoUrl;
  bool isEdit = false;
  @override
  void initState() {
    super.initState();
    if (widget.officialLinks != null) {
      isEdit = true;
      titleTEC.text = widget.officialLinks!.name!;
      linkTEC.text = widget.officialLinks!.link!;
      logoUrl = widget.officialLinks!.image!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CollegeBloc, CollegeState>(
      listener: (context, state) {
        // TODO: implement listener
        state.linkResultOpt!.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(message: failure.error)
                    .show(context);
              },
              (unit) {
                if (widget.officialLinks != null) {
                  Navigator.of(context).pop();
                  Fluttertoast.showToast(
                      msg: "Official link modified successfully");
                } else {
                  Navigator.of(context).pop();
                  Fluttertoast.showToast(
                      msg: "New Official link added successfully");
                }
              },
            );
          },
        );
        state.linkDeleteResultOpt!.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                Navigator.of(context).pop();
                FlushbarHelper.createError(message: failure.error)
                    .show(context);
              },
              (r) {
                Navigator.of(context).pop();
                Fluttertoast.showToast(msg: "Link deleted successfully!");
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: SingleChildScrollView(
            child: Container(
              color: Kolors.greyWhite,
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      color: Colors.white,
                      child: Column(
                        children: [
                          TextFieldLineWidget(
                            controller: titleTEC,
                            hint: "Title",
                            validationFn: (val) {
                              return (val?.isNotEmpty ?? false)
                                  ? null
                                  : 'Please enter the title';
                            },
                          ),
                          const SizedBox(height: 32),
                          TextFieldBoxWidget(
                            controller: linkTEC,
                            hint: "Link",
                            validationFn: (val) {
                              return (val?.isNotEmpty ?? false)
                                  ? null
                                  : 'Please enter the link';
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 12,
                      ),
                      color: Colors.white,
                      child: Row(
                        children: [
                          logoWidget(),
                          const SizedBox(
                            width: 66,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                PrimaryBorderButton(
                                  onTap: () async {
                                    await showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return ImagePickerDialog(
                                            onImageSelected: (selected) async {
                                              if (selected != null) {
                                                setState(() {
                                                  logoFile = selected;
                                                });
                                              }
                                              Navigator.of(context).pop();
                                            },
                                          );
                                        });
                                  },
                                  text: "Choose Logo",
                                  color: Kolors.primaryColor1,
                                ),
                                if ((logoUrl?.isNotEmpty ?? false) ||
                                    logoFile != null)
                                  const SizedBox(
                                    height: 12,
                                  ),
                                if ((logoUrl?.isNotEmpty ?? false) ||
                                    logoFile != null)
                                  PrimaryBorderButton(
                                    onTap: () {
                                      setState(() {
                                        logoFile = null;
                                        logoUrl = null;
                                      });
                                    },
                                    text: "Remove Logo",
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 23,
                          ),
                        ],
                      ),
                    ),
                    if (isEdit)
                      const SizedBox(
                        height: 24,
                      ),
                    if (isEdit)
                      DeleteTile(
                        onTap: () {
                          context
                              .read<CollegeBloc>()
                              .add(CollegeEvent.deleteOfficialLink(
                                userCollege:
                                    Getters.getCurrentUserCollege(context),
                                officialLinks: widget.officialLinks,
                                index: widget.index,
                              ));
                        },
                        text: "Delete this Link",
                        isDeleting: state.isDeletingLink!,
                      ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                      ),
                      child: Center(
                        child: PrimaryButton(
                          isLoading: state.isSavingLink!,
                          onTap: () async {
                            if (formKey.currentState!.validate()) {
                              if (widget.officialLinks != null) {
                                context
                                    .read<CollegeBloc>()
                                    .add(CollegeEvent.editOfficialLink(
                                      userCollege:
                                          Getters.getCurrentUserCollege(
                                              context),
                                      officialLinks: OfficialLinks(
                                        name: titleTEC.text,
                                        link: linkTEC.text,
                                        image: logoUrl,
                                        docId: widget.officialLinks!.docId,
                                      ),
                                      index: widget.index,
                                      file: logoFile,
                                    ));
                              } else {
                                context
                                    .read<CollegeBloc>()
                                    .add(CollegeEvent.addOfficialLink(
                                      userCollege:
                                          Getters.getCurrentUserCollege(
                                              context),
                                      title: titleTEC.text,
                                      link: linkTEC.text,
                                      file: logoFile,
                                    ));
                              }
                            }
                          },
                          width: 128,
                          text: "SAVE",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget logoWidget() {
    return logoFile != null
        ? Container(
            height: 84,
            width: 84,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Kolors.skyBlueColor,
              image: DecorationImage(
                image: kIsWeb
                    ? Image.network(
                        logoFile!.path,
                        height: 84,
                        width: 84,
                        fit: BoxFit.fill,
                      ).image
                    : Image.file(
                        logoFile!,
                        height: 84,
                        width: 84,
                        fit: BoxFit.fill,
                      ).image,
              ),
            ),
          )
        : logoUrl?.isNotEmpty ?? false
            ? Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Kolors.skyBlueColor,
                  image: DecorationImage(
                    image: NetworkImage(logoUrl!),
                  ),
                ),
              )
            : Container(
                height: 84,
                width: 84,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Kolors.skyBlueColor,
                ),
                child: const IconImagesWid(
                  iconName: 'empty_logo.png',
                  height: 72,
                  width: 72,
                  color: Colors.white,
                ),
              );
  }
}
