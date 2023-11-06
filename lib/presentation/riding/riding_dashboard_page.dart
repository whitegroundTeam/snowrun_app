
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RidingDashboardPage extends StatefulWidget {
  const RidingDashboardPage({super.key});

  @override
  State createState() => RidingDashboardPageState();

  static pushRidingDashboardPage(
      BuildContext context,
      ) {
    context.push(
      '/ridingDashboard',
      // extra: {'url': url, 'title': title ?? ''},
    );
  }
}

class RidingDashboardPageState extends State<RidingDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
