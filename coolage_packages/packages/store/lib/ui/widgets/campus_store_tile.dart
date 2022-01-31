import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage/application/store/store_details/store_details_bloc.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/presentation/routes/router.gr.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CampusStoreTile extends StatelessWidget {
  final StoreBasicDetailsModel? model;
  const CampusStoreTile({
    Key? key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context
            .read<StoreDetailsBloc>()
            .add(StoreDetailsEvent.getStoreProductsList(model!.storeId!));
        AutoRouter.of(context).push(StoreDetailsPageRoute(storeModel: model));
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
                    text: model!.name,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: Fonts.CONTENT_FONT,
                  ),
                  CustomText(
                    text:
                        '${model!.location} | Open till ${model!.closingTimings!.format(context)}',
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
                imageUrl: model!.image!,
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
