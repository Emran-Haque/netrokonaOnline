import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ZilaInfo extends StatefulWidget {
  const ZilaInfo({Key? key}) : super(key: key);
  @override
  State<ZilaInfo> createState() => _ZilaInfoState();
}

class _ZilaInfoState extends State<ZilaInfo> {
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: WebView(
            initialUrl: 'http://www.netrokona.gov.bd/bn/site/page/M6gh-%E0%A6%8F%E0%A6%95-%E0%A6%A8%E0%A6%9C%E0%A6%B0%E0%A7%87-%E0%A6%A8%E0%A7%87%E0%A6%A4%E0%A7%8D%E0%A6%B0%E0%A6%95%E0%A7%8B%E0%A6%A3%E0%A6%BE',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController){
              _controller = webViewController;
            }
          ),
        ),
      ),
    );
  }
}

