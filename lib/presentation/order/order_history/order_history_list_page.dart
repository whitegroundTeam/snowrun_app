import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/common_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderHistoryListPage extends StatefulWidget {
  const OrderHistoryListPage({
    super.key,
  });

  @override
  State createState() => OrderHistoryListPageState();

  static pushOrderHistoryListPage(BuildContext context,
      {Function(Object? value)? onResult}) {
    context
        .push(
          '/order-history-list',
        )
        .then((value) => onResult?.call(value));
  }
}

class OrderHistoryListPageState extends State<OrderHistoryListPage> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: CustomScrollView(
        slivers: [
          CommonAppBar(
            isSliver: true,
            appBarType: AppBarType.close,
            title: "주문내역",
            onClickCloseButton: () {
              context.pop();
            },
          ),
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 96,
                ),
                Center(
                  child: Text(
                    "주문내역과 반납내역 화면 입니다.",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
