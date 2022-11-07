import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Rail extends StatefulWidget {
  const Rail({Key? key}) : super(key: key);

  @override
  State<Rail> createState() => _RailState();
}

class _RailState extends State<Rail> {
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('রেল টিকিট',
          style: TextStyle(
              fontSize: 20.0
          ),),
      ),
      body: Center(
        child: WillPopScope(
          onWillPop: () async {
            if(await _controller.canGoBack()){
              _controller.goBack();
              return false;
            }
            else{
              return true;
            }
          },

          child: WebView(
              initialUrl: "https://eticket.railway.gov.bd/",
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
