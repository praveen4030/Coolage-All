import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage/domain/models/refurbished_model.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class RefurbishedDetailsDialog extends StatelessWidget {
  final RefurbishedModel? model;
  const RefurbishedDetailsDialog({
    Key? key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Kolors.greyWhite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          image(context),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: model!.name,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomText(
                  text: model!.desc,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Kolors.greyLightBlue,
                ),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    PriceWidget(
                      price: CustomText(
                        text: '${model!.price!.toInt()}',
                        fontFamily: Fonts.CONTENT_FONT,
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                      ),
                      size: 12,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomText(
                      text: model!.isFixed! ? '(Fixed)' : '(Negotiable)',
                      fontFamily: Fonts.CONTENT_FONT,
                      fontWeight: FontWeight.w600,
                      color: Kolors.greyLightBlue,
                      fontSize: 14,
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(),
                        ],
                      ),
                      child: const Icon(
                        Icons.share_outlined,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: 'in use since : ${model!.inUseSince}',
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w400,
                  color: Kolors.greyLightBlue,
                  fontSize: 12,
                ),
                CustomText(
                  text:
                      'Posted on : ${timeago.format(model!.timestamp!.toDate())}',
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w400,
                  color: Kolors.greyLightBlue,
                  fontSize: 12,
                ),
                const SizedBox(
                  height: 24,
                ),
                bottom(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bottom() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'Seller : ',
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                  color: Kolors.greyLightBlue,
                  fontSize: 14,
                ),
                CustomText(
                  text: model!.sellerName,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ],
            ),
          ),
          CircleIcon(
            icon: 'messages',
            height: 24,
            width: 26,
            color: Kolors.secondaryColor1,
            onTap: () {},
          ),
          const SizedBox(
            width: 30,
          ),
          CircleIcon(
            icon: 'call',
            height: 25,
            width: 25,
            onTap: () {},
            color: Kolors.secondaryColor1,
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }

  Widget image(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: model!.image!,
                height: 200,
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).pop();
                },
                child: const Icon(
                  Icons.cancel_rounded,
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
