import 'package:flutter/material.dart';
import 'package:snowrun_app/app_style.dart';

class CommonLoading extends StatefulWidget {
  const CommonLoading({super.key});

  @override
  State createState() => CommonLoadingState();
}

class CommonLoadingState extends State<CommonLoading> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IgnorePointer(
          ignoring: false,
          child: Container(
            color: Colors.transparent,
          ),
        ),
        const Center(
          child: SizedBox(
            width: 36,
            height: 36,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: AppStyle.white,
            ),
          ),
          // child: CircularProgressIndicator(),
        )
      ],
    );
  }
}
