import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:snowrun_app/app_style.dart';

class LoadingDialog {
  late BuildContext _context;

  LoadingDialog(BuildContext context) {
    _context = context;
  }

  show() {
    showDialog(
      barrierDismissible: false,
      context: _context,
      builder: (BuildContext context) {
        return const Loader();
      },
    );
  }

  hide() {
    if (Navigator.of(_context, rootNavigator: true).canPop()) {
      Navigator.of(_context, rootNavigator: true).pop();
    }
  }
}

class Loader extends StatefulWidget {
  const Loader({super.key});

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader>
    with AutomaticKeepAliveClientMixin<Loader> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const Stack(
      children: <Widget>[
        ModalBarrier(
          dismissible: false,
          color: Colors.transparent,
          // color: Color(0xffaacc),
        ),
        Center(
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
