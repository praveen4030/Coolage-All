import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage/application/store/store_details/store_details_bloc.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/presentation/base/store/widgets/store_items_list.dart';
import 'package:coolage/presentation/base/widgets/store_canteen_action_buttons.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreDetailsPage extends StatelessWidget {
  final StoreBasicDetailsModel? storeModel;
  const StoreDetailsPage({
    Key? key,
    @required this.storeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoreDetailsBloc, StoreDetailsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 350,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/store_background.png',
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: CoolageAppBar(
                        actions: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: IconWithBackground(
                              iconName: 'cart',
                              iconColor: Kolors.greyBlue,
                              onTap: () {},
                            ),
                          ),
                        ],
                        text: storeModel!.name,
                        titleColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 20),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: CachedNetworkImage(
                                      imageUrl: storeModel!.image!,
                                      height: 200,
                                      fit: BoxFit.fill,
                                      width: MediaQuery.of(context).size.width,
                                    ),
                                  ),
                                ),
                                StoreCanteenActionButtons(
                                  onCallTap: () {},
                                  onLocationTap: () {},
                                  onMessageTap: () {},
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 36,
                          ),
                          const CustomText(
                            text:
                                "CBRI | Open till : 2am\nRoom Delivery : AVAILABLE",
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            fontFamily: Fonts.CONTENT_FONT,
                            textAlign: TextAlign.center,
                            color: Kolors.greyBlue,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          StoreItemsList(
                            productsList: state.storeProductsList,
                            categoriesList: storeModel!.productCategories,
                            storeBasicDetailsModel: storeModel,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
