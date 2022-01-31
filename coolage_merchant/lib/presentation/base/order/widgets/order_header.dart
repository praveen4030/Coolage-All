import 'package:coolage_merchant/application/canteen/orders_canceled/orders_canceled_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_finished/orders_finished_bloc.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/base_app_bar.dart';
import 'package:coolage_merchant/presentation/core/widgets/coolage_icon.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/icon_with_background.dart';
import 'package:coolage_merchant/presentation/core/widgets/menu_popup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderHeader extends StatelessWidget {
  final bool? isCancelledOrders;
  final Function? onChange;
  const OrderHeader({
    Key? key,
    @required this.isCancelledOrders,
    @required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      color: Kolors.greyWhite,
      child: Column(
        children: [
          Row(
            children: [
              const CoolageIconWidget(),
              const Expanded(
                child: Center(
                  child: Text(
                    "Orders",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      fontFamily: Fonts.HEADING_FONT,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    if (isCancelledOrders!) {
                      context.read<OrdersCanceledBloc>().add(
                          OrdersCanceledEvent.getCanceledOrders(
                              Getters.getCurrentCanteenId(context)));
                    } else {
                      context
                          .read<OrdersFinishedBloc>()
                          .add(OrdersFinishedEvent.getCompletedOrders(
                            Getters.getCurrentCanteenId(context),
                          ));
                    }
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Kolors.greyBlue.withOpacity(0.5),
                        )
                      ],
                    ),
                    child: const Icon(Icons.refresh_outlined),
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CupertinoSwitch(
                activeColor: Kolors.redColor,
                value: isCancelledOrders ?? false,
                onChanged: (bool? val) {
                  onChange!(val ?? false);
                },
              ),
              const CustomText(
                text: "Show Cancelled Orders",
                fontSize: 14,
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          // const BaseAppBar(
          //   text: "Orders",
          //   textColor: Colors.black,
          // ),
          // const SizedBox(
          //   height: 16,
          // ),
          // Row(
          //   children: [
          //     MenuPopUpWidget(
          //       onTap: () {},
          //       button: Container(
          //         padding: const EdgeInsets.all(3.5),
          //         decoration: BoxDecoration(
          //           color: Kolors.secondaryColor2,
          //           borderRadius: BorderRadius.circular(8),
          //         ),
          //         child: const Icon(
          //           Icons.menu_outlined,
          //           color: Colors.white,
          //           size: 28,
          //         ),
          //       ),
          //       itemsList: [],
          //     ),
          //     const SizedBox(
          //       width: 8,
          //     ),
          //     const CustomText(
          //       text: "Completed",
          //     ),
          //     Expanded(
          //       child: Container(),
          //     ),
          //     GestureDetector(
          //         onTap: () {
          //           context
          //               .read<OrdersFinishedBloc>()
          //               .add(OrdersFinishedEvent.getCompletedOrders(
          //                 Getters.getCurrentCanteenId(context),
          //               ));
          //         },
          //         child: Container(
          //           height: 40,
          //           width: 40,
          //           alignment: Alignment.center,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(8),
          //             color: Colors.white,
          //             boxShadow: const [
          //               BoxShadow(),
          //             ],
          //           ),
          //           child: Icon(Icons.refresh_outlined),
          //         )),
          //     // SquareIconWidget(
          //     //   icon: 'calendar',
          //     //   onTap: () async {},
          //     // ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
