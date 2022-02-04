import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:user/ui/profile/profile_header/edit_profile_header/edit_profile_header.dart';
import 'package:user/user.dart';

class PlacementProfileHeaderWidget extends StatelessWidget {
  final CoolUser coolUser;
  const PlacementProfileHeaderWidget({
    Key? key,
    required this.coolUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(bottom: 4),
          decoration: const BoxDecoration(
            color: Kolors.greyWhite2,
          ),
          child: Column(
            children: [
              imageHeader(context, state.isCurrentUser),
              const SizedBox(
                height: 28,
              ),
              editProfileButton(context),
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
                  height: 225,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 12,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 20,
                                  color: Kolors.greyBlack.withOpacity(0.5),
                                )
                              ],
                            ),
                            child: const Center(
                              child: IconImagesWid(
                                iconName: 'back_arrow.png',
                                color: Colors.white,
                                height: 24,
                                width: 24,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        CustomText(
                          text: coolUser.name,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        const Spacer(),
                        const SizedBox(
                          height: 38,
                          width: 38,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    getSubdetails(),
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

  Widget getSubdetails() {
    if (coolUser.userType == Constants.USER_TYPE_STUDENT) {
      return Column(
        children: [
          CustomText(
            text: Functions.getSubdetailString(coolUser),
            fontSize: 14,
            color: Kolors.white.withOpacity(0.5),
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if ((coolUser.branch?.isNotEmpty ?? false))
                CustomText(
                  text: '${coolUser.branch} , ',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Kolors.white,
                ),
              if ((coolUser.college?.isNotEmpty ?? false))
                CustomText(
                  text: '${coolUser.college}',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Kolors.white,
                ),
            ],
          ),

          // if ((coolUser.branch?.isNotEmpty ?? false))
          //   const SizedBox(
          //     height: 8,
          //   ),

          // if ((coolUser.branch?.isNotEmpty ?? false) ||
          //     (coolUser.college?.isNotEmpty ?? false))
          //   const SizedBox(
          //     height: 32,
          //   ),
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
