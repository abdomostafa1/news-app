import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewWebView extends StatelessWidget {
  NewWebView({super.key, required this.url}) {
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.loadRequest(Uri.parse(url));
  }

  final String url;
  final controller = WebViewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: WebViewWidget(controller: controller,),
      ),
    );
  }
}
