// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';

// Project imports:

class CommonWebViewPage extends StatefulWidget {
  final String url;
  final String? title;

  const CommonWebViewPage({
    super.key,
    required this.url,
    this.title,
  });

  @override
  CommonWebViewPageState createState() => CommonWebViewPageState();

  static pushCommonWebView(BuildContext context, String url, String? title) {
    context.push(
      '/webview',
      extra: {'url': url, 'title': title ?? ''},
    );
  }
}

class CommonWebViewPageState extends State<CommonWebViewPage> {
  final GlobalKey webViewKey = GlobalKey();

  bool isVisible = true;

  InAppWebViewController? webViewController;
  InAppWebViewSettings settings = InAppWebViewSettings(
    // useShouldOverrideUrlLoading: true,
    javaScriptEnabled: true,
    mediaPlaybackRequiresUserGesture: false,
    useHybridComposition: true,
    allowsInlineMediaPlayback: true,
    cacheEnabled: false,
    // sharedCookiesEnabled: true,
  );
  PullToRefreshController? pullToRefreshController;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _hideWebView();
        return Future.value(true);
      },
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(56.0),
            child: CommonAppBar(
              title: widget.title ?? "",
              appBarType: AppBarType.close,
              isShowShadow: true,
              isSliver: false,
              onClickCloseButton: () {
                _hideWebView();
              },
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Visibility(
                  visible: isVisible,
                  child: InAppWebView(
                    key: webViewKey,
                    initialUrlRequest:
                        URLRequest(url: WebUri("https://www.naver.com/")),
                    initialSettings: settings,
                    // initialOptions: options,
                    pullToRefreshController: pullToRefreshController,
                    onWebViewCreated: (controller) async {
                      webViewController = controller;
                    },
                    onLoadStart: (controller, url) {},
                    onLoadStop: (controller, url) async {
                      pullToRefreshController?.endRefreshing();
                    },
                    onProgressChanged: (controller, progress) {
                      if (progress == 100) {
                        pullToRefreshController?.endRefreshing();
                      }
                    },
                    onUpdateVisitedHistory:
                        (controller, url, androidIsReload) {},
                    onConsoleMessage: (controller, consoleMessage) {
                      debugPrint(consoleMessage.message);
                    },
                    onCloseWindow: (controller) {
                      Navigator.of(context).pop();
                    },
                    onLoadResourceWithCustomScheme: (controller, url) async {
                      await controller.stopLoading();
                      return null;
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }

  _hideWebView() {
    setState(() {
      isVisible = false;
    });
  }
}
