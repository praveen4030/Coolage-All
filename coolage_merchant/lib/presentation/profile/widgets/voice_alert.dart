import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/core/helpers/hive_constants.dart';
import 'package:coolage_merchant/domain/models/local/canteen_local_details.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class VoiceAlertWidget extends StatelessWidget {
  const VoiceAlertWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final canteenLocalBox = Hive.box<CanteenLocalDetails>(
        HiveConstants.CANTEEN_LOCAL_DETAILS_BOX_NAME);
    return ValueListenableBuilder(
        valueListenable: canteenLocalBox.listenable(),
        builder: (context, box, widget) {
          final canteenDetailsModel = canteenLocalBox.get(0);
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Kolors.greyBlue.withOpacity(0.25),
                width: 1,
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(
                    color: Kolors.greyBlue,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/icons/voice_alert.png',
                    height: 24,
                    width: 24,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const CustomText(
                  text: "Voice Alert",
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                const Spacer(),
                Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    trackColor: Kolors.greyBlue,
                    activeColor: Kolors.greenColor,
                    value: canteenDetailsModel?.isVoiceAlertOn ?? false,
                    onChanged: (bool? val) {
                      changeVoiceAlertStatus(val ?? false);
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }

  Future<void> changeVoiceAlertStatus(bool val) async {
    final canteenLocalBox = Hive.box<CanteenLocalDetails>(
        HiveConstants.CANTEEN_LOCAL_DETAILS_BOX_NAME);
    CanteenLocalDetails? canteenDetailsModel = canteenLocalBox.get(0);
    if (canteenDetailsModel == null) {
      canteenDetailsModel = CanteenLocalDetails(isVoiceAlertOn: val);
    } else {
      canteenDetailsModel.isVoiceAlertOn = val;
    }
    canteenLocalBox.put(0, canteenDetailsModel);
  }
}
