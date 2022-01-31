import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/domain/models/item_model.dart';
import 'package:coolage/presentation/base/store/widgets/store_item_tile.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';

class StoreItemsList extends StatelessWidget {
  final List<ItemModel>? productsList;
  final List<String>? categoriesList;
  final StoreBasicDetailsModel? storeBasicDetailsModel;
  const StoreItemsList({
    Key? key,
    @required this.productsList,
    @required this.categoriesList,
    @required this.storeBasicDetailsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              MenuPopUpWidget(
                onTap: () {},
                button: Container(
                  padding: const EdgeInsets.all(3.5),
                  decoration: BoxDecoration(
                    color: Kolors.secondaryColor1,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.menu_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                itemsList: categoriesList,
              ),
              const SizedBox(
                width: 8,
              ),
              const CustomText(
                text: "Categories",
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              Expanded(
                child: Container(),
              ),
              SquareIconWidget(
                icon: 'search',
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          Container(
            height: 1,
            color: Kolors.greyBlue,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: "Popular",
            color: Kolors.greyBlue,
            fontFamily: Fonts.CONTENT_FONT,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 8,
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: productsList!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 16,
                childAspectRatio: 0.82,
              ),
              itemBuilder: (context, index) {
                return StoreItemTile(
                  storeItemModel: productsList![index],
                  storeBasicDetailsModel: storeBasicDetailsModel,
                  itemsList: productsList,
                );
              }),
        ],
      ),
    );
  }
}
