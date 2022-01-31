import 'package:coolage/application/store/stores_list/stores_list_bloc.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/presentation/base/store/widgets/featured_store_tile.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedStoresList extends StatelessWidget {
  const FeaturedStoresList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoresListBloc, StoresListState>(
      listener: (context, state) {},
      builder: (context, state) {
        final List<StoreBasicDetailsModel> storesList =
            state.collegeStoresList!;
        return Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: "Featured Stores",
                    fontSize: 22,
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
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 170,
                child: Center(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: storesList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FeaturedStoreTile(
                          storeBasicDetailsModel: storesList[index]);
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 27,
              ),
            ],
          ),
        );
      },
    );
  }
}
