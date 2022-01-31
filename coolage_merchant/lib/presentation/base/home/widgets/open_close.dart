import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/application/auth/authentication_bloc.dart';
import 'package:coolage_merchant/application/canteen/canteen_basic_functions/canteen_basic_functions_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/widgets/button.dart';
import 'package:coolage_merchant/presentation/core/widgets/confirm_alert_dialog.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';

class OpenCloseWidget extends StatefulWidget {
  const OpenCloseWidget({
    Key? key,
  }) : super(key: key);

  @override
  _OpenCloseWidgetState createState() => _OpenCloseWidgetState();
}

class _OpenCloseWidgetState extends State<OpenCloseWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
      return Container(
        height: 60,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          children: [
            const CustomText(
              text: 'Business is',
              color: Kolors.fontColor,
              fontSize: 20,
            ),
            const Spacer(),
            buttonStream(),
          ],
        ),
      );
    });
  }

  Widget buttonStream() {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.canteenBasicDetailsCollection
            .doc(Getters.getCurrentCanteenId(context))
            .snapshots(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasData) {
            final model = CanteenBasicDetailsModel.fromMap(
                snapshot.data!.data()! as Map<String, dynamic>);
            return ButtonWid(
              onTap: () async {
                await showDialog(
                    context: context,
                    builder: (context) {
                      return ConfirmAlertDialog(
                          text: model.isOpen!
                              ? "Are you sure you have want to set it close?"
                              : "Are you sure you have want to set it open?",
                          fn: () {
                            context.read<CanteenBasicFunctionsBloc>().add(
                                CanteenBasicFunctionsEvent.switchOpenStatus(
                                    !model.isOpen!,
                                    Getters.getCurrentCanteenId(context)));
                          });
                    });
              },
              text: model.isOpen! ? 'Open' : 'Close',
              height: 28,
              color: model.isOpen! ? Kolors.greenColor : Colors.red,
              width: 100,
              fontSize: 14,
            );
          }
          return Container();
        });
  }
}
