import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/helpers/constants.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/order_tile.dart';
import 'package:flutter/material.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/audioplayers.dart';

class OngoingOrdersRealtime extends StatelessWidget {
  final OrderStatus? orderStatus;
  const OngoingOrdersRealtime({
    Key? key,
    @required this.orderStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Getters.getCurrentCanteenId(context).isNotEmpty
          ? StreamBuilder(
              stream: FirebaseFirestore.instance.canteenBasicDetailsCollection
                  .doc(Getters.getCurrentCanteenId(context))
                  .canteenOngoingOrdersCollection
                  .where('orderStatus',
                      isEqualTo: getOrderStatusString(orderStatus!))
                  .orderBy('timestamp', descending: true)
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: Text('No order available!'),
                  );
                }
                List<DocumentSnapshot> items = snapshot.data?.docs ?? [];
                return items.isNotEmpty
                    ? Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            DocumentSnapshot doc = items[index];
                            OrderModel model = OrderModel.fromMap(
                                doc.data()! as Map<String, dynamic>);
                            return OrderTile(
                              orderModel: model,
                            );
                          },
                        ),
                      )
                    : const Center(
                        child: Text('No order available!'),
                      );
              },
            )
          : Container(),
    );
  }
}
