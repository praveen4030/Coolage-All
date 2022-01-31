import 'package:coolage/domain/models/app_update_dialog_model.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';

class AppUpdateDialog extends StatelessWidget {
  final AppUpdateDialogModel? appUpdateDialogModel;
  const AppUpdateDialog({
    Key? key,
    @required this.appUpdateDialogModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/new_update.png',
              height: 188,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: appUpdateDialogModel!.title,
                    fontSize: 24,
                    color: Kolors.secondaryColor2,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomText(
                    text: appUpdateDialogModel!.subtitle,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: Fonts.CONTENT_FONT,
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: appUpdateDialogModel!.pointsList?.length ?? 0,
                    itemBuilder: (context, index) {
                      return CustomText(
                        text: "> ${appUpdateDialogModel!.pointsList![index]}",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Kolors.greyBlue,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ButtonWid(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          text: "LATER",
                          color: Kolors.greyWhite,
                          fontColor: Kolors.greyBlue,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        flex: 1,
                        child: ButtonWid(
                          onTap: () {
                            Functions.launchURL(
                                'https://play.google.com/store/apps/details?id=com.kraigs.coolage&hl=en_IN&gl=US');
                          },
                          text: "DOWNLOAD",
                          color: Kolors.secondaryColor2,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
