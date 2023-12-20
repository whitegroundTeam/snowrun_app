import 'package:snowrun_app/presentation/core/common_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReturnOrderListPage extends StatefulWidget {
  const ReturnOrderListPage({
    super.key,
  });

  @override
  State createState() => ReturnOrderListPageState();
}

class ReturnOrderListPageState extends State<ReturnOrderListPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("반납내역", style: TextStyle(color: Colors.white, fontSize: 24),));
  }
}
