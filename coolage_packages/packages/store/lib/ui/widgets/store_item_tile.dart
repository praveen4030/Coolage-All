import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage/application/store/store_details/store_details_bloc.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/domain/models/item_model.dart';
import 'package:coolage/presentation/base/store/dialogs/store_item_details_dialog.dart';
import 'package:coolage/presentation/routes/router.gr.dart';
import 'package:core/core.dart';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreItemTile extends StatelessWidget {
  final ItemModel? storeItemModel;
  //below two are used just to add to cart
  final List<ItemModel>? itemsList;
  final StoreBasicDetailsModel? storeBasicDetailsModel;
  const StoreItemTile({
    Key? key,
    @required this.storeItemModel,
    @required this.itemsList,
    @required this.storeBasicDetailsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showDialog(
            context: context,
            builder: (context) {
              return BlocConsumer<StoreDetailsBloc, StoreDetailsState>(
                listener: (context, state) {
                  state.addToCartFailureOrSuccess!.fold(() {}, (either) {
                    either.fold((failure) async {
                      storeItemModel!.qty = 0;
                      await AutoRouter.of(context).pop();
                      FlushbarHelper.createError(message: failure.error)
                          .show(context);
                    }, (_) {});
                  });
                },
                builder: (context, state) {
                  return Dialog(
                    child: StoreItemDetailsDialog(
                      storeItemModel: storeItemModel,
                      onAddToCart: () {
                        if (storeItemModel!.qty! == 0) {
                          storeItemModel!.qty = 1;
                          context.read<StoreDetailsBloc>().add(
                              StoreDetailsEvent.addToCart(
                                  isIncreased: true,
                                  storeItems: itemsList,
                                  storeBasicDetailsModel:
                                      storeBasicDetailsModel));
                        } else {
                          AutoRouter.of(context)
                              .push(const StoreCartPageRoute());
                        }
                      },
                    ),
                  );
                },
              );
            });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Kolors.greyWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: storeItemModel!.image!,
                height: 130,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomText(
              text: storeItemModel!.itemName,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: storeItemModel!.subtitle,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  fontFamily: Fonts.CONTENT_FONT,
                ),
                PriceWidget(
                  price: CustomText(
                    text: '${storeItemModel!.price}',
                    color: Kolors.greyBlue,
                  ),
                  size: 17,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
