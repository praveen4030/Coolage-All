import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/domain/helpers/share_profile.dart';
import 'package:user/ui/profile/pages/qr_code_page.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:user/ui/profile/pages/qr_details.dart';
import 'package:user/user.dart';

import 'edit_profile_header/edit_profile_header.dart';

class UserProfileHeaderWidget extends StatelessWidget {
  final CoolUser coolUser;
  const UserProfileHeaderWidget({
    Key? key,
    required this.coolUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(bottom: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Kolors.greyBlue.withOpacity(0.5),
              )
            ],
          ),
          child: Column(
            children: [
              imageHeader(context, state.isCurrentUser),
              const SizedBox(
                height: 50,
              ),
              CustomText(
                text: coolUser.name,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 28,
              ),
              getSubdetails(),
              if (coolUser.socialMediaUrls?.isNotEmpty ?? false)
                socialMediaProfiles(context),
              if (coolUser.socialMediaUrls?.isNotEmpty ?? false)
                const SizedBox(
                  height: 32,
                ),
              if (coolUser.bio?.isNotEmpty ?? false)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 91),
                  child: Center(
                    child: CustomText(
                      text: coolUser.bio,
                      fontSize: 14,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              if (coolUser.bio?.isNotEmpty ?? false)
                const SizedBox(
                  height: 30,
                ),
              if (state.isCurrentUser) editProfileButton(context),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget imageHeader(BuildContext context, bool isCurrentUser) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  bottom: 44,
                ),
                child: Image.asset(
                  'assets/icons/profile/profile_header.png',
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 44,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              color: Kolors.greyBlack.withOpacity(0.5),
                            )
                          ],
                        ),
                        child: const IconImagesWid(
                          iconName: 'back_arrow.png',
                          color: Colors.white,
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () async {
                        ShareProfileFunction.shareMessage(coolUser);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              offset: const Offset(0, 0),
                              color: Kolors.greyBlack.withOpacity(0.5),
                            )
                          ],
                        ),
                        child: const IconImagesWid(
                          iconName: 'upload.png',
                          color: Colors.white,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    if (isCurrentUser)
                      const SizedBox(
                        width: 28,
                      ),
                    if (isCurrentUser)
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const QrDetailsPage()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                offset: const Offset(0, 0),
                                color: Kolors.greyBlack.withOpacity(0.5),
                              )
                            ],
                          ),
                          child: const IconImagesWid(
                            iconName: 'qr_code.png',
                          ),
                        ),
                      )
                  ],
                ),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Kolors.skyBlueColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Kolors.greyBlue.withOpacity(0.5),
                ),
              ],
            ),
            child: UserProfileCircular(
              image: coolUser.imageUrl,
              size: 120,
            ),
          ),
        ],
      ),
    );
  }

  Widget socialMediaProfiles(BuildContext context) {
    final List<Widget> list = [];
    coolUser.socialMediaUrls!.forEach((key, value) {
      final iconName = Functions.socialMediaIconsNameMap()[key];

      list.add(Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: SocialMediaIcon(
          onTap: () {
            Functions.launchURL(value);
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => WebViewPage(url: value)));
          },
          iconName: 'social_media/$iconName.png',
        ),
      ));
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...list,
      ],
    );
  }

  Widget getSubdetails() {
    if (coolUser.userType == Constants.USER_TYPE_STUDENT) {
      return Column(
        children: [
          CustomText(
            text:
                '${coolUser.degree} - ${Functions.getWithSuffix(int.parse(coolUser.year!))} year',
            fontSize: 18,
            color: Kolors.greyBlue,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 8,
          ),
          if ((coolUser.branch?.isNotEmpty ?? false))
            CustomText(
              text: '${coolUser.branch}',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Kolors.greyBlue,
            ),
          if ((coolUser.branch?.isNotEmpty ?? false))
            const SizedBox(
              height: 8,
            ),
          if ((coolUser.college?.isNotEmpty ?? false))
            CustomText(
              text: '${coolUser.college}',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Kolors.greyBlue,
            ),
          if ((coolUser.branch?.isNotEmpty ?? false) ||
              (coolUser.college?.isNotEmpty ?? false))
            const SizedBox(
              height: 32,
            ),
        ],
      );
    } else if (coolUser.userType == Constants.USER_TYPE_FACULTY) {
      return Column(
        children: [
          if (coolUser.designation?.isNotEmpty ?? false)
            CustomText(
              text: '${coolUser.designation}',
              fontSize: 18,
              color: Kolors.greyBlue,
              fontWeight: FontWeight.w400,
            ),
          const SizedBox(
            height: 8,
          ),
          if ((coolUser.branch?.isNotEmpty ?? false) ||
              (coolUser.college?.isNotEmpty ?? false))
            CustomText(
              text: '${coolUser.branch}, ${coolUser.college}',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Kolors.greyBlue,
            ),
          if ((coolUser.branch?.isNotEmpty ?? false) ||
              (coolUser.college?.isNotEmpty ?? false))
            const SizedBox(
              height: 32,
            ),
        ],
      );
    } else if (coolUser.userType == Constants.USER_TYPE_GUEST) {
      return Column(
        children: [
          CustomText(
            text: 'Guest at ${coolUser.college}',
            fontSize: 18,
            color: Kolors.greyBlue,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      );
    } else if (coolUser.userType == Constants.USER_TYPE_STAFF) {
      return Column(
        children: [
          CustomText(
            text: 'Staff at ${coolUser.college}',
            fontSize: 18,
            color: Kolors.greyBlue,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      );
    }
    return Container();
  }

  Widget editProfileButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => EditProfileHeaderPage(
                  coolUser: coolUser,
                )));
      },
      child: Container(
        height: 40,
        width: 140,
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Kolors.primaryColor1,
          ),
        ),
        child: Row(
          children: const [
            SizedBox(width: 12),
            IconImagesWid(
              iconName: 'edit.png',
              height: 24,
              width: 24,
              color: Kolors.primaryColor1,
            ),
            SizedBox(width: 12),
            CustomText(
              text: "Edit Profile",
              color: Kolors.primaryColor1,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )
          ],
        ),
      ),
    );
  }
}
