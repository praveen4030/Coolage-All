import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/application/store/refurbished/refurbished_bloc.dart';
import 'package:coolage/domain/models/refurbished_model.dart';
import 'package:coolage/presentation/base/store/buy_sell/refusrbished_tile.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RefurbishedItemsPage extends StatelessWidget {
  const RefurbishedItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RefurbishedBloc, RefurbishedState>(
      listener: (context, state) {},
      builder: (context, state) {
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
                text: 'Refurbished',
              ),
            ),
          ),
          body: ListView(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      SearchWidget(
                        text: "Search for Refurbished Products",
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      headerWidget(),
                      ListView.builder(
                        itemCount: state.refurbishedItemsList!.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return RefurbishedTile(
                              model: state.refurbishedItemsList![index]);
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget headerWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomText(
          text: "Latest",
          fontFamily: Fonts.CONTENT_FONT,
          fontSize: 18,
          color: Kolors.greyLightBlue,
        ),
        Container(
          height: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Kolors.secondaryColor1,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 11,
            vertical: 4,
          ),
          child: const CustomText(
            text: "Add +",
            fontSize: 18,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
