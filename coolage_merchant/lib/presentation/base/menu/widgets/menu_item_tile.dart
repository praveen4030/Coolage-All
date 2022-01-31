import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage_merchant/application/canteen/menu/canteen_menu_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/base/menu/widgets/veg_nonveg_widget.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/add_image.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuItemTile extends StatefulWidget {
  final ItemModel? itemModel;
  const MenuItemTile({
    Key? key,
    @required this.itemModel,
  }) : super(key: key);

  @override
  _MenuItemTileState createState() => _MenuItemTileState();
}

class _MenuItemTileState extends State<MenuItemTile> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CanteenMenuBloc, CanteenMenuState>(
      builder: (context, state) {
        int index = state.menuItemsList!.indexOf(widget.itemModel!);

        return GestureDetector(
          onTap: () async {
            AutoRouter.of(context).push(AddMenuItemPageRoute(
              itemModel: widget.itemModel,
              index: index,
            ));
          },
          child: Container(
            padding:
                const EdgeInsets.only(right: 22, left: 12, top: 12, bottom: 12),
            // decoration: BoxDecoration(
            //   color: Kolors.greyWhite,
            //   borderRadius: BorderRadius.circular(8),
            // ),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: widget.itemModel!.image!.isNotEmpty
                          ? CachedNetworkImage(
                              imageUrl: widget.itemModel!.image!,
                              width: 100,
                              height: 80,
                              fit: BoxFit.cover,
                            )
                          : Container(
                              decoration: const BoxDecoration(
                                color: Kolors.greyBlue,
                              ),
                              height: 80,
                              width: 100,
                              child: Image.asset(
                                'assets/icons/add.png',
                                height: 96,
                                width: 40,
                                color: Colors.white,
                              ),
                            ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          VegNonvegWidget(
                            isVeg: widget.itemModel!.isVeg,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            text: widget.itemModel!.itemName,
                            color: Colors.black,
                            fontFamily: Fonts.CONTENT_FONT,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            text: getPrice(),
                            color: Kolors.greyBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          )
                        ],
                      ),
                    ),
                    Switch(
                      value: widget.itemModel!.isAvailable ?? false,
                      onChanged: (val) {
                        //getting new instance
                        widget.itemModel!.isAvailable = val;
                        context
                            .read<CanteenMenuBloc>()
                            .add(CanteenMenuEvent.updateMenuItem(
                              Getters.getCurrentCanteenId(context),
                              widget.itemModel!,
                              index,
                            ));
                        setState(() {});
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                const Divider(
                  color: Kolors.greyBlue,
                  height: 1,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  String getPrice() {
    if (widget.itemModel!.categoryPrices?.isEmpty ?? true) {
      return '₹ ${widget.itemModel!.price!.toInt()}';
    } else {
      widget.itemModel!.categoryPrices!
          .sort((a, b) => ((a.price ?? 0) - (b.price ?? 0)).toInt());
      final lowest = widget.itemModel!.categoryPrices![0].price;
      return '₹ ${lowest!.toInt()}';
    }
  }
}
