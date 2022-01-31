import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';

class StoreShopTile extends StatelessWidget {
  final StoreBasicDetailsModel? storeBasicDetailsModel;
  const StoreShopTile({
    Key? key,
    @required this.storeBasicDetailsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // AutoRouter.of(context).push(StoreDetailsPageRoute(
        //   storeModel: model,
        // ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 6,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          color: Kolors.greyWhite,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: storeBasicDetailsModel!.name,
                    fontSize: 20,
                  ),
                  CustomText(
                    text:
                        '${storeBasicDetailsModel!.location} | Open till ${storeBasicDetailsModel!.openTimings!.format(context)}',
                    fontFamily: Fonts.CONTENT_FONT,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Kolors.greyBlue,
                  )
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: storeBasicDetailsModel!.image!,
                width: 100,
                height: 80,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
