import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/appbar/back_app_bar.dart';
import 'package:snowrun_app/presentation/core/appbar/close_app_bar.dart';
import 'package:snowrun_app/presentation/core/appbar/home_app_bar.dart';
import 'package:snowrun_app/presentation/core/appbar/sliver_back_app_bar.dart';
import 'package:snowrun_app/presentation/core/appbar/sliver_close_app_bar.dart';

// usecase : final enum = AppBarType.findByName(stringValue);
enum AppBarType {
  undefined("UNDEFINED"),
  close("CLOSE"),
  back("BACK"),
  home("HOME"),
  normal("NORMAL"),
  ;

  const AppBarType(this.description);

  final String description;

  static AppBarType findByName({String? name}) {
    const defaultValue = AppBarType.undefined;
    if (name == null) {
      return defaultValue;
    }
    return AppBarType.values.firstWhere(
            (element) =>
        element.name.toUpperCase() == element.description.toUpperCase(),
        orElse: () => defaultValue);
  }
}

class CommonAppBar extends StatefulWidget {
  final String? title;
  final AppBarType? appBarType;
  final bool? isSliver;
  final bool? isShowShadow;
  final String? actionButtonText;
  final Function? onClickActionButton;
  final Color backgroundColor;

  const CommonAppBar({
    super.key,
    this.title,
    this.isShowShadow,
    this.appBarType,
    this.isSliver,
    this.actionButtonText,
    this.onClickActionButton,
    this.backgroundColor = AppStyle.background,
  });

  @override
  State createState() => CommonAppBarState();
}

class CommonAppBarState extends State<CommonAppBar> {
  late AppBarType appBarType;
  late bool isSliver;

  @override
  void initState() {
    super.initState();
    appBarType = widget.appBarType ?? AppBarType.normal;
    isSliver = widget.isSliver ?? true;
  }

  @override
  Widget build(BuildContext context) {
    if (appBarType == AppBarType.home) {
      return const HomeAppBar();
    } else if (appBarType == AppBarType.close) {
      if (isSliver) {
        return SliverCloseAppBar(
          title: widget.title,
          isShowShadow: widget.isShowShadow,
          backgroundColor: widget.backgroundColor,
        );
      } else {
        return CloseAppBar(
          title: widget.title,
          isShowShadow: widget.isShowShadow,
          backgroundColor: widget.backgroundColor,
        );
      }
    } else {
      if (isSliver) {
        return SliverBackAppBar(
          title: widget.title,
          actionButtonText: widget.actionButtonText,
          onClickActionButton: widget.onClickActionButton,
          backgroundColor: widget.backgroundColor,
        );
      } else {
        return BackAppBar(
          title: widget.title,
          actionButtonText: widget.actionButtonText,
          onClickActionButton: widget.onClickActionButton,
          isShowShadow: widget.isShowShadow,
          backgroundColor: widget.backgroundColor,
        );
      }
    }
    return Container();
  }
}
