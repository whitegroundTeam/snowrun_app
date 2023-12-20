import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/common_scaffold.dart';
import 'package:snowrun_app/presentation/order/order_history/order_history_list_page.dart';
import 'package:snowrun_app/presentation/order/order_history/return_order_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({
    super.key,
  });

  @override
  State createState() => HistoryPageState();

  static pushHistoryPage(
    BuildContext context, {
    bool? needRefresh = false,
  }) {
    context.push(
      '/history',
    );
  }
}

class HistoryPageState extends State<HistoryPage> {
  static const int orderHistoryListPage = 0;
  static const int returnOrderListPage = 1;
  final _tabs = [orderHistoryListPage, returnOrderListPage];

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            const CommonAppBar(
              isSliver: true,
              title: "주문내역",
              appBarType: AppBarType.close,
            ),
            DefaultTabController(
              length: _tabs.length,
              initialIndex: orderHistoryListPage,
              child: SliverFillRemaining(
                hasScrollBody: true,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                        onTap: (index) {
                          // if (index == 0) {
                          //   AnalyticsManager.sendLogEvent(
                          //       "orderhistory_order_view");
                          // } else if (index == 1) {
                          //   AnalyticsManager.sendLogEvent(
                          //       "orderhistory_voucher_view");
                          // }
                        },
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 0),
                        isScrollable: false,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorPadding:
                            const EdgeInsets.symmetric(horizontal: 8),
                        indicator: const UnderlineTabIndicator(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        labelColor: Colors.grey,
                        labelStyle: AppStyle.kTextStyle.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff333333),
                        ),
                        unselectedLabelColor: Colors.grey,
                        unselectedLabelStyle: AppStyle.kTextStyle.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff9c9c9c),
                        ),
                        tabs: _tabs
                            .map(
                              (tab) => SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5 -
                                    40,
                                child: Tab(
                                  text: tab == orderHistoryListPage
                                      ? "주문내역"
                                      : "반납내역",
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: _tabs.map((category) {
                          if (category == orderHistoryListPage) {
                            return const OrderHistoryListPage();
                          } else {
                            return const ReturnOrderListPage();
                          }
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
