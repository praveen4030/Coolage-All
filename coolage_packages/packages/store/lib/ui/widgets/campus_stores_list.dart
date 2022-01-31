import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/presentation/base/store/widgets/campus_store_tile.dart';
import 'package:flutter/material.dart';

class CampusStoresList extends StatelessWidget {
  final List<StoreBasicDetailsModel>? campusStoresList;
  const CampusStoresList({
    Key? key,
    @required this.campusStoresList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: campusStoresList!.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return CampusStoreTile(
            model: campusStoresList![index],
          );
        },
      ),
    );
  }
}
