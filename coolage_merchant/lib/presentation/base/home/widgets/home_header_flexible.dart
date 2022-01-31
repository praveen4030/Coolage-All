import 'package:coolage_merchant/application/auth/authentication_bloc.dart';
import 'package:coolage_merchant/application/canteen/canteen_basic_functions/canteen_basic_functions_bloc.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/base/home/widgets/open_close.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/coolage_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'delivery_self.dart';

class HomeHeaderFlexibleWidget extends StatelessWidget {
  const HomeHeaderFlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CanteenBasicFunctionsBloc, CanteenBasicFunctionsState>(
      listener: (context, state) {
        state.deliveryStatusFailureOrSuccess!.fold(() {}, (either) {
          either.fold(
            (failure) {},
            (_) {
              Fluttertoast.showToast(
                  msg: 'Delivery Status changed successfully');
              final canteenBasicDetailsModel = context
                  .read<AuthenticationBloc>()
                  .state
                  .canteenBasicDetailsModel!;
              canteenBasicDetailsModel.isDelivery =
                  !canteenBasicDetailsModel.isDelivery!;
              context.read<AuthenticationBloc>().add(
                  AuthenticationEvent.userModified(
                      canteenBasicDetailsModel: canteenBasicDetailsModel));
            },
          );
        });
        state.openStatusFailureOrSuccess!.fold(() {}, (either) {
          either.fold(
            (failure) {},
            (_) {
              Fluttertoast.showToast(msg: 'Open Status changed successfully');
              final canteenBasicDetailsModel = context
                  .read<AuthenticationBloc>()
                  .state
                  .canteenBasicDetailsModel!;
              canteenBasicDetailsModel.isOpen =
                  !canteenBasicDetailsModel.isOpen!;
              context.read<AuthenticationBloc>().add(
                  AuthenticationEvent.userModified(
                      canteenBasicDetailsModel: canteenBasicDetailsModel));
            },
          );
        });
      },
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const CoolageIconWidget(),
                  Expanded(
                    child: Center(
                      child: Text(
                        Getters.getCurrentCanteen(context).name!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          fontFamily: Fonts.HEADING_FONT,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const OpenCloseWidget(),
              const SizedBox(
                height: 12,
              ),
              const DeliverySelfWidget(),
            ],
          ),
        );
      },
    );
  }
}
