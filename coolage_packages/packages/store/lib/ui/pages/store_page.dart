import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/application/store/store_details/store_details_bloc.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/domain/core/helpers/enum.dart';
import 'package:coolage/domain/models/item_model.dart';
import 'package:coolage/presentation/base/store/widgets/campus_stores_list.dart';
import 'package:coolage/presentation/base/store/widgets/featured_stores_list.dart';
import 'package:coolage/presentation/base/store/widgets/store_icons.dart';
import 'package:coolage/presentation/core/widgets/base_app_bar.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoreDetailsBloc, StoreDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: BaseAppBar(
                  textColor: Colors.black,
                  text: 'CANTEEN',
                  baseAppBarAction: BaseAppBarAction.store,
                ),
              ),
            ),
            body: Container(
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            'assets/images/blog_header.png',
                            fit: BoxFit.cover,
                            height: 120,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomText(
                          text: "Categories",
                          fontSize: 22,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const StoreIconsWidget(),
                        const SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Kolors.greyWhite.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        FeaturedStoresList(),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 38,
                              width: 38,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Kolors.greyBlue.withOpacity(0.25),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/icons/stores/campus_shops.png',
                                height: 25,
                                width: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const CustomText(
                              text: "Campus Stores",
                              color: Kolors.greyLightBlue,
                              fontSize: 22,
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                addCollegeStore();
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(),
                                  ],
                                ),
                                child: const CustomText(
                                  text: "-",
                                  fontSize: 26,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CampusStoresList(
                          campusStoresList: state.collegeStoresList,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> addCollegeStore() async {
    final doc = FirebaseFirestore.instance.storeBasicDetailsCollection.doc();
    StoreBasicDetailsModel store = StoreBasicDetailsModel(
        name: 'Amit Stationary',
        image:
            'https://static.toiimg.com/thumb/msid-81696162,width-1200,height-900,resizemode-4/.jpg',
        location: 'Campus',
        geoPoint: GeoPoint(0, 1),
        openTimings: TimeOfDay(hour: 10, minute: 10),
        closingTimings: TimeOfDay(hour: 22, minute: 20),
        contactNo: '7221904716',
        messageUid: '',
        isDelivery: true,
        storeId: doc.id,
        timestamp: Timestamp.now(),
        category: 'Stationary',
        city: 'Jaipur',
        college: 'NIT Jalandhar',
        productCategories: ['Hostel Needs', 'Print', 'Others']);
    await doc.set(store.toMap());
    List<ItemModel> list = [
      ItemModel(
        itemName: 'Pen',
        image:
            'https://cms.cloudinary.vpsvc.com//image/fetch/q_auto:best,w_700,f_auto,dpr_auto/https://s3-eu-west-1.amazonaws.com/sitecore-media-bucket/prod%2Fen-IN%2F%7BD9C75053-2DF8-4CA0-B1BD-41698352A7A8%7D%3Fv%3Dfd72572f69601ddb465670382cb7318a',
        price: 10,
        subtitle: 'Set of 2',
        desc: 'ksnck wincc kinconc eneovnoev edvn oevn evie',
        qty: 0,
        itemId: 'Pen',
        category: 'Hostel Needs',
      ),
      ItemModel(
        itemName: 'Notebook',
        image: 'https://m.media-amazon.com/images/I/41e3YGKg-3L.jpg',
        price: 130,
        subtitle: 'Set of 2',
        desc: 'ksnck wincc kinconc eneovnoev edvn oevn evie',
        qty: 0,
        itemId: 'Notebook',
        category: 'Hostel Needs',
      ),
      ItemModel(
        itemName: 'Bucket',
        image: 'https://m.media-amazon.com/images/I/61n9LFeri2L._SL1500_.jpg',
        price: 70,
        subtitle: 'Set of 1',
        desc: 'ksnck wincc kinconc eneovnoev edvn oevn evie',
        qty: 0,
        itemId: 'Bucket',
        category: 'Others',
      ),
      ItemModel(
        itemName: 'Chair',
        image:
            'https://cdn.shopify.com/s/files/1/0044/1208/0217/products/CHR2226_Season_Rust_Brown-Biscuit_01_900x.jpg?v=1579784121',
        price: 320,
        subtitle: 'Set of 2',
        desc: 'ksnck wincc kinconc eneovnoev edvn oevn evie',
        qty: 0,
        itemId: 'Chair',
        category: 'Others',
      ),
    ];
    final map = {};
    for (var v in list) {
      map.putIfAbsent(v.itemName, () => v.toMap());
    }
    await FirebaseFirestore.instance.storeProductsCollection.doc(doc.id).set({
      'productsMap': map,
    });
  }
}
