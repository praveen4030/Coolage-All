import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';

class FeaturedStoreTile extends StatelessWidget {
  final StoreBasicDetailsModel? storeBasicDetailsModel;
  const FeaturedStoreTile({
    Key? key,
    @required this.storeBasicDetailsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 6,
            color: Colors.grey[300]!,
          )
        ],
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: storeBasicDetailsModel!.image!,
              height: 104,
              width: 136,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomText(
            text: storeBasicDetailsModel!.name,
            textAlign: TextAlign.center,
            fontFamily: Fonts.CONTENT_FONT,
            fontWeight: FontWeight.w700,
            fontSize: 12,
          ),
          const SizedBox(
            height: 6,
          ),
          CustomText(
            text: storeBasicDetailsModel!.location,
            textAlign: TextAlign.center,
            fontFamily: Fonts.CONTENT_FONT,
            fontWeight: FontWeight.w600,
            fontSize: 10,
            color: Kolors.greyBlue,
          ),
        ],
      ),
    );
  }
}
