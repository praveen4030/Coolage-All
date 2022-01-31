import 'package:coolage/application/store/store_details/store_details_bloc.dart';
import 'package:coolage/application/store/stores_list/stores_list_bloc.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/presentation/base/store/widgets/store_shop_tile.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreCategoryShopsPage extends StatelessWidget {
  final String? category;
  const StoreCategoryShopsPage({
    Key? key,
    @required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoresListBloc, StoresListState>(
      listener: (context, state) {},
      builder: (context, state) {
        final List<StoreBasicDetailsModel> categoryStoresList =
            state.categoryStoresMap![category!] ?? [];
        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CoolageAppBar(
                actions: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: IconWithBackground(
                      iconName: 'cart',
                      iconColor: Kolors.greyBlue,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
                text: '$category Shops',
              ),
            ),
          ),
          body: ListView(
            children: [
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SearchWidget(
                  text: "Search for People, Messages",
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const CustomText(
                                  text: "Distance",
                                  fontSize: 18,
                                  fontFamily: Fonts.CONTENT_FONT,
                                  fontWeight: FontWeight.w400,
                                  color: Kolors.greyBlue,
                                ),
                                Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(),
                                      ],
                                    ),
                                    child: Image.asset(
                                      'assets/icons/location.png',
                                      height: 25,
                                      width: 17.5,
                                    ))
                              ],
                            ),
                            ListView.builder(
                              itemCount: categoryStoresList.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return StoreShopTile(
                                  storeBasicDetailsModel:
                                      categoryStoresList[index],
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
