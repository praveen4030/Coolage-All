import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/presentation/base/menu/widgets/menu_item_tile.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class MenuCategoryItemsWidget extends StatelessWidget {
  final List<ItemModel>? itemsList;
  final String? category;
  const MenuCategoryItemsWidget({
    Key? key,
    @required this.category,
    @required this.itemsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: category,
            color: Kolors.greyBlue,
            fontFamily: Fonts.CONTENT_FONT,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 8,
          ),
          FutureBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return snapshot.data as Widget;
              }
              return Container();
            },
            future: buildHeavyWidget(),
          ),
        ],
      ),
    );
  }

  Future<Widget> buildHeavyWidget() async {
    // build and return heavy widget
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: itemsList!.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return MenuItemTile(
          itemModel: itemsList![index],
        );
      },
    );
  }
}
