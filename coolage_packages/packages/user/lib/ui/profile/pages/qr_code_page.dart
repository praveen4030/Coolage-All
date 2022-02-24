import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share/share.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/domain/helpers/share_profile.dart';
import 'package:user/user.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        final coolUser = state.coolUser!;
        return Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/qr_code_bg.png",
                      ),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(
                      bottom: 60,
                      // top: 55,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 70),
                          decoration: const BoxDecoration(
                            color: Kolors.skyBlueColor,
                            shape: BoxShape.circle,
                          ),
                          child: UserProfileCircular(
                            image: coolUser.imageUrl,
                            size: 120,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        CustomText(
                          text: coolUser.name,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 70,
                          child: getSubDetails(coolUser),
                        ),
                        const SizedBox(
                          height: 34,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                "assets/images/qr_frame.png",
                                height: 230,
                                width: 230,
                              ),
                              Container(
                                margin: const EdgeInsets.all(30),
                                child: QrImage(
                                  eyeStyle: const QrEyeStyle(
                                    color: Kolors.primaryColor1,
                                    eyeShape: QrEyeShape.square,
                                  ),
                                  foregroundColor: Kolors.primaryColor1,
                                  data: Getters.getCurrentUserUid(),
                                  embeddedImage: const AssetImage(
                                    "assets/icons/qr_coolage_logo.png",
                                  ),
                                  embeddedImageStyle: QrEmbeddedImageStyle(
                                    size: const Size(60, 60),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // shareButton(context, coolUser),
                // const SizedBox(
                //   height: 100,
                // ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget getSubDetails(CoolUser coolUser) {
    if (coolUser.userType == Constants.USER_TYPE_STUDENT) {
      return Column(
        children: [
          CustomText(
            text: Functions.getSubdetailString(coolUser),
            fontSize: 16,
            color: Kolors.greyBlue,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 8,
          ),
          if ((coolUser.branch?.isNotEmpty ?? false))
            CustomText(
              text: '${coolUser.branch}',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Kolors.greyBlue,
              textAlign: TextAlign.center,
            ),
          if ((coolUser.branch?.isNotEmpty ?? false))
            const SizedBox(
              height: 8,
            ),
          CustomText(
            text: '${coolUser.college}',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Kolors.greyBlue,
            textAlign: TextAlign.center,
          ),
        ],
      );
    } else if (coolUser.userType == Constants.USER_TYPE_FACULTY) {
      return Column(
        children: [
          if (coolUser.designation?.isNotEmpty ?? false)
            CustomText(
              text: '${coolUser.designation}',
              fontSize: 16,
              color: Kolors.greyBlue,
              fontWeight: FontWeight.w400,
            ),
          if (coolUser.designation?.isNotEmpty ?? false)
            const SizedBox(
              height: 8,
            ),
          if (coolUser.branch?.isNotEmpty ?? false)
            CustomText(
              text: '${coolUser.branch}',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Kolors.greyBlue,
              textAlign: TextAlign.center,
            ),
          if (coolUser.branch?.isNotEmpty ?? false)
            const SizedBox(
              height: 8,
            ),
          if (coolUser.college?.isNotEmpty ?? false)
            CustomText(
              text: '${coolUser.college}',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Kolors.greyBlue,
              textAlign: TextAlign.center,
            ),
        ],
      );
    } else if (coolUser.userType == Constants.USER_TYPE_GUEST) {
      return Column(
        children: [
          if (coolUser.college?.isNotEmpty ?? false)
            CustomText(
              text: 'Guest @ ${coolUser.college}',
              fontSize: 16,
              color: Kolors.greyBlue,
              fontWeight: FontWeight.w400,
            ),
          if (coolUser.college?.isNotEmpty ?? false)
            const SizedBox(
              height: 8,
            ),
        ],
      );
    } else if (coolUser.userType == Constants.USER_TYPE_STAFF) {
      return Column(
        children: [
          if (coolUser.college?.isNotEmpty ?? false)
            CustomText(
              text: 'Staff @ ${coolUser.college}',
              fontSize: 16,
              color: Kolors.greyBlue,
              fontWeight: FontWeight.w400,
            ),
          if (coolUser.college?.isNotEmpty ?? false)
            const SizedBox(
              height: 8,
            ),
        ],
      );
    } else
      return Container();
  }

  Widget shareButton(BuildContext context, CoolUser coolUser) {
    return GestureDetector(
      onTap: () async {
        final link = await UserDynamicLinkFunctions.getUserShareLink(coolUser);
        if (link?.isEmpty ?? true) {
          FlushbarHelper.createError(message: "Something went wrong!")
              .show(CoreGetters.getContext);
          return;
        }
        final message = ShareProfileFunction.getMessage(coolUser, link!);
        Share.share(message);
      },
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 40,
              offset: const Offset(0, 4),
              color: Kolors.greyBlue.withOpacity(0.5),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(width: 12),
            IconImagesWid(
              iconName: 'upload.png',
              height: 24,
              width: 24,
              color: Kolors.primaryColor1,
            ),
            SizedBox(width: 8),
            CustomText(
              text: "Share QR Code",
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
