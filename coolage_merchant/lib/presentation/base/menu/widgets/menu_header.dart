import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/application/canteen/menu/canteen_menu_bloc.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/coolage_icon.dart';
import 'package:coolage_merchant/presentation/core/widgets/icon_with_background.dart';
import 'package:coolage_merchant/presentation/core/widgets/square_icon.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({Key? key}) : super(key: key);

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
                    "MENU",
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
                    context.read<CanteenMenuBloc>().add(
                        CanteenMenuEvent.getMenu(
                            Getters.getCurrentCanteenId(context)));
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
              const SizedBox(width: 12),
              SquareIconWidget(
                icon: 'add',
                isBoxShadow: true,
                onTap: () async {
                  AutoRouter.of(context).push(AddMenuItemPageRoute());
                },
              ),
            ],
          ),
          // const BaseAppBar(
          //   text: "MENU",
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
          //       text: "MENU",
          //       fontWeight: FontWeight.w500,
          //     ),
          //     Expanded(
          //       child: Container(),
          //     ),
          //     SquareIconWidget(
          //       icon: 'add',
          //       onTap: () async {
          //         AutoRouter.of(context).push(AddMenuItemPageRoute());
          //       },
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
