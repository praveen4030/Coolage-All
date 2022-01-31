import 'package:coolage_merchant/application/canteen/sales_statistics/sales_statistics_bloc.dart';
import 'package:coolage_merchant/domain/base/sales/daily_sale_model.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/core/functions/functions.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/widgets/app_bar.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_layout.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/price_widget.dart';
import 'package:coolage_merchant/presentation/profile/sales/daily_sale_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SalesStatsPage extends StatefulWidget {
  const SalesStatsPage({Key? key}) : super(key: key);

  @override
  _SalesStatsPageState createState() => _SalesStatsPageState();
}

class _SalesStatsPageState extends State<SalesStatsPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        context
            .read<SalesStatisticsBloc>()
            .add(SalesStatisticsEvent.getMoreSalesStatistics(
              Getters.getCurrentCanteenId(context),
              Getters.getCurrentCanteen(context)
                  .canteenOpeningTimestamp!
                  .toDate(),
            ));
      }
    });
    context.read<SalesStatisticsBloc>().add(
        SalesStatisticsEvent.getInititalSalesStatistics(
            Getters.getCurrentCanteenId(context)));
    super.initState();
  }

  Future<void> onRefresh(BuildContext context) async {
    context.read<SalesStatisticsBloc>().add(
        SalesStatisticsEvent.getInititalSalesStatistics(
            Getters.getCurrentCanteenId(context)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SalesStatisticsBloc, SalesStatisticsState>(
      builder: (context, state) {
        return CustomLayout(
          child: SafeArea(
            child: Scaffold(
              appBar: const PreferredSize(
                preferredSize: Size.fromHeight(70),
                child: CoolageAppBar(actions: [], text: 'Sales Statistics'),
              ),
              body: RefreshIndicator(
                  onRefresh: () => onRefresh(context),
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    child: Column(
                      children: [
                        if (state.isLoading!)
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 200),
                            child: const Center(
                                child: CircularProgressIndicator()),
                          )
                        else
                          ListView.builder(
                            itemCount: state.dailySalesList!.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return dailySale(state.dailySalesList![index]);
                            },
                          ),
                        if (state.isMoreLoading!)
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: CircularProgressIndicator(),
                          ),
                      ],
                    ),
                  )),
            ),
          ),
        );
      },
    );
  }

  Widget dailySale(DailySaleModel dailySaleModel) {
    return Column(
      children: [
        dayWidget(dailySaleModel),
        ListView.builder(
          itemCount: dailySaleModel.ordersList!.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return DailySaleWidget(
                orderModel: dailySaleModel.ordersList![index]);
          },
        ),
      ],
    );
  }

  Widget dayWidget(DailySaleModel dailySaleModel) {
    return Container(
      color: Kolors.greyWhite,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 36,
            width: 30,
            decoration: BoxDecoration(
              color: Kolors.greyBlue,
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: CustomText(
              text: dailySaleModel.ordersList!.length.toString(),
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          CustomText(
            text: Functions.getDate(dailySaleModel.dateTime!),
            fontSize: 16,
          ),
          const Spacer(),
          CustomText(
            text: '₹ ${dailySaleModel.totalSale!.toInt().toString()}',
            color: Kolors.greenColor,
            fontSize: 24,
          ),
        ],
      ),
    );
  }
}
