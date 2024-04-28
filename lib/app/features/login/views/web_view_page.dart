import 'package:auto_route/annotations.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WebViewPage extends StatefulWidget {
  final String url;
  const WebViewPage({required this.url, super.key});

  @override
  State<WebViewPage> createState() => _WebViewState();
}

class _WebViewState extends State<WebViewPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}