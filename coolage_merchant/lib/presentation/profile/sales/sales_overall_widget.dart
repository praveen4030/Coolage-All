import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/application/auth/authentication_bloc.dart';
import 'package:coolage_merchant/domain/base/sales/overall_sales_model.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/core/functions/functions.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/profile/sales/sales_stats_page.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SalesOverallWidget extends StatelessWidget {
  const SalesOverallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthenticationBloc>().state.coolUser!;
    if (!(user.isCanteenAdmin ?? false)) {
      return Container();
    }
    return StreamBuilder(
      stream: FirebaseFirestore.instance.canteenBasicDetailsCollection
          .doc(Getters.getCurrentCanteenId(context))
          .canteenSalesDocsCollection
          .doc(DateTime.now().year.toString())
          .snapshots(),
      builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasData &&
            snapshot.data != null &&
            (snapshot.data?.data() != null)) {
          final model = OverallSalesModel.fromMap(
              snapshot.data!.data()! as Map<String, dynamic>);
          return getOverallSalesCard(context, model);
        } else {
          return Container();
        }
      },
    );
  }

  Widget getOverallSalesCard(
    BuildContext context,
    OverallSalesModel model,
  ) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(const SalesStatsPageRoute());
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 56),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/sales.png',
                  height: 25,
                  width: 25,
                ),
                const SizedBox(
                  width: 16,
                ),
                const CustomText(
                  text: "Sales",
                  fontWeight: FontWeight.w400,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(const SalesStatsPageRoute());
                  },
                  child: Container(
                    height: 20,
                    width: 71,
                    decoration: BoxDecoration(
                      color: Kolors.greyBlue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: const CustomText(
                      text: "View More",
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Kolors.greyBlue,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: "Today",
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffDADBEA),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      CustomText(
                        text: Functions.getDate(DateTime.now()),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffDADBEA),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: '₹ ${model.todaysSale!.toString()}',
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      const Spacer(),
                      CustomText(
                        text: model.todayOrderCount!.toString(),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffDADBEA),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const CustomText(
                        text: "Orders",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffDADBEA),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Divider(
                    height: 1,
                    color: Color(0xffC2C4DF),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: weekMonthStatWidget(
                          "Last 7 days",
                          model.weeklySale!,
                          model.weeklyOrderCount!,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 82,
                        width: 1,
                        color: const Color(0xffC2C4DF),
                      ),
                      Expanded(
                        flex: 1,
                        child: weekMonthStatWidget(
                          "This Month : ${Functions.getMonthYearStr()}",
                          model.monthlySale!,
                          model.monthlyOrderCount!,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget weekMonthStatWidget(String title, int sale, int count) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          color: Kolors.greyBlueLight,
          fontWeight: FontWeight.w400,
          fontSize: 10,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomText(
          text: '₹ $sale',
          fontSize: 24,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            CustomText(
              text: (count).toString(),
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Kolors.greyWhite,
            ),
            const SizedBox(
              width: 6,
            ),
            const CustomText(
              text: "Orders",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Kolors.greyWhite,
            ),
          ],
        )
      ],
    );
  }
}
