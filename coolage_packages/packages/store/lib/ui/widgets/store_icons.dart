import 'package:auto_route/auto_route.dart';
import 'package:coolage/application/store/refurbished/refurbished_bloc.dart';
import 'package:coolage/application/store/stores_list/stores_list_bloc.dart';
import 'package:coolage/domain/core/helpers/getter.dart';
import 'package:coolage/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'store_icon_tile.dart';

class StoreIconsWidget extends StatelessWidget {
  const StoreIconsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              StoreIconTile(
                iconName: 'used',
                name: "Used",
                isUsed: true,
                onTap: () {
                  context.read<RefurbishedBloc>().add(
                      RefurbishedEvent.getRefurbishedItems(
                          college: Getters.getCurrentUserCollege(context)));
                  AutoRouter.of(context)
                      .push(const RefurbishedItemsPageRoute());
                },
              ),
              const Spacer(),
              StoreIconTile(
                iconName: 'stationary',
                name: "Stationery",
                onTap: () {
                  openStoreCategoryPage(context, "Stationary");
                },
              ),
              const Spacer(),
              StoreIconTile(
                iconName: 'apparel',
                name: 'Apparel',
                onTap: () {
                  openStoreCategoryPage(context, "Apparel");
                },
              ),
              const Spacer(),
              StoreIconTile(
                iconName: 'printing',
                name: "Printing",
                onTap: () {
                  openStoreCategoryPage(context, "Printing");
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              StoreIconTile(
                iconName: 'books',
                name: "Books",
                onTap: () {
                  openStoreCategoryPage(context, "Books");
                },
              ),
              const Spacer(),
              StoreIconTile(
                iconName: 'electronics',
                name: "Electronics",
                onTap: () {
                  openStoreCategoryPage(context, "Electronics");
                },
              ),
              const Spacer(),
              StoreIconTile(
                iconName: 'grocery',
                name: 'Grocery',
                onTap: () {
                  openStoreCategoryPage(context, "Grocery");
                },
              ),
              const Spacer(),
              StoreIconTile(
                iconName: 'sports',
                name: "Sports",
                onTap: () {
                  openStoreCategoryPage(context, "Sports");
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StoreIconTile(
                iconName: 'hardware',
                name: "Hardware",
                onTap: () {
                  openStoreCategoryPage(context, "Hardware");
                },
              ),
              const Spacer(),
              StoreIconTile(
                iconName: 'gifts',
                name: "Gifts",
                onTap: () {
                  openStoreCategoryPage(context, "Gifts");
                },
              ),
              const Spacer(),
              Container(
                width: 71,
              ),
              const Spacer(),
              Container(
                width: 71,
              )
            ],
          ),
        ],
      ),
    );
  }

  void openStoreCategoryPage(BuildContext context, String category) {
    context
        .read<StoresListBloc>()
        .add(StoresListEvent.getCategoryStores(category: category));
    AutoRouter.of(context)
        .push(StoreCategoryShopsPageRoute(category: category));
  }
}
