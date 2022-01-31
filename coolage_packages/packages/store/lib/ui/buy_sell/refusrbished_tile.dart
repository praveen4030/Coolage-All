import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage/domain/models/refurbished_model.dart';
import 'package:coolage/presentation/base/store/buy_sell/refusrbished_details_dialog.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';

class RefurbishedTile extends StatelessWidget {
  final RefurbishedModel? model;
  const RefurbishedTile({
    Key? key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: RefurbishedDetailsDialog(
                  model: model,
                ),
              );
            });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 22.5),
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                top: 8,
                bottom: 16,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300]!,
                      blurRadius: 5,
                    ),
                  ]),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: model!.image!,
                      height: 130,
                      width: 130,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: model!.name,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomText(
                          text: 'Seller : ${model!.sellerName}',
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w600,
                          color: Kolors.greyLightBlue,
                          fontSize: 14,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            const CustomText(
                              text: 'Price : ',
                              fontFamily: Fonts.CONTENT_FONT,
                              fontWeight: FontWeight.w600,
                              color: Kolors.greyLightBlue,
                              fontSize: 14,
                            ),
                            PriceWidget(
                              price: CustomText(
                                text: '${model!.price!.toInt()}',
                                fontFamily: Fonts.CONTENT_FONT,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                              size: 12,
                            ),
                            Spacer(),
                            CustomText(
                              text:
                                  model!.isFixed! ? '(Fixed)' : '(Negotiable)',
                              fontFamily: Fonts.CONTENT_FONT,
                              fontWeight: FontWeight.w600,
                              color: Kolors.greyLightBlue,
                              fontSize: 14,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
                  width: 24,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
