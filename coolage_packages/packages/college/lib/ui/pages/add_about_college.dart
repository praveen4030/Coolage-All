import 'dart:io';

import 'package:college/application/college/college_bloc.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/user.dart';

class AddAboutCollgePage extends StatefulWidget {
  final String? about;
  final String? logoUrl;
  const AddAboutCollgePage({
    Key? key,
    @required this.about,
    @required this.logoUrl,
  }) : super(key: key);

  @override
  State<AddAboutCollgePage> createState() => _AddAboutCollgePageState();
}

class _AddAboutCollgePageState extends State<AddAboutCollgePage> {
  final aboutTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  File? logoFile;
  String? logoUrl;
  @override
  void initState() {
    super.initState();
    aboutTEC.text = widget.about ?? '';
    logoUrl = widget.logoUrl ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CollegeBloc, CollegeState>(
      listener: (context, state) {
        state.aboutResultOpt!.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(message: failure.error)
                    .show(context);
              },
              (unit) {
                Navigator.of(context).pop();
                Fluttertoast.showToast(msg: "Details saved successfully!");
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
              child: CoolageAppBar(
                isCenter: true,
                backgroundColor: Kolors.greyWhite,
                actions: [],
                text: 'About ${Getters.getCurrentUserCollege(context)}',
              ),
            ),
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      aboutCollege(),
                      const SizedBox(
                        height: 24,
                      ),
                      addLogo(),
                    ],
                  ),
                ),
              ),
            ),
            bottomSheet: Container(
              height: 84,
              child: Center(
                child: PrimaryButton(
                  isLoading: state.isSavingAbout!,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      context
                          .read<CollegeBloc>()
                          .add(CollegeEvent.modifyAboutCollege(
                            userCollege: Getters.getCurrentUserCollege(context),
                            about: aboutTEC.text,
                            file: logoFile,
                            logoUrl: logoUrl,
                          ));
                    } else if (aboutTEC.text.isEmpty) {
                      Fluttertoast.showToast(msg: 'Please add description');
                    }
                  },
                  text: "SAVE",
                  width: 128,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget aboutCollege() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: TextFormField(
        controller: aboutTEC,
        validator: (val) {
          return val != null && val.isNotEmpty
              ? null
              : 'Please add description';
        },
        minLines: 3,
        maxLines: null,
        maxLength: 600,
        buildCounter: (_,
                {int currentLength = 0,
                bool isFocused = false,
                int? maxLength}) =>
            maxLength == null
                ? null
                : Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: CustomText(
                        text: currentLength.toString() +
                            "/" +
                            maxLength.toString() +
                            " Words",
                        color: Kolors.greyBlue,
                        fontSize: 12,
                        fontFamily: Fonts.CONTENT_FONT,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
        style: const TextStyle(
          color: Kolors.greyBlack,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: Fonts.CONTENT_FONT,
        ),
        scrollPadding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 12,
        ),
        decoration: const InputDecoration(
          errorStyle: TextStyle(
            color: Kolors.redPrimaryColor,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 12,
          ),
          border: InputBorder.none,
          hintText: "Add description...",
          hintStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontFamily: Fonts.CONTENT_FONT,
            color: Kolors.greyBlue,
          ),
        ),
      ),
    );
  }

  Widget addLogo() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
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
                if (logoFile != null || (logoUrl?.isNotEmpty ?? false))
                  const SizedBox(
                    height: 12,
                  ),
                if (logoFile != null || (logoUrl?.isNotEmpty ?? false))
                  PrimaryBorderButton(
                    onTap: () {
                      setState(() {
                        logoUrl = '';
                        logoFile = null;
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
                        ).image),
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
