import 'package:auto_route/annotations.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WebView extends StatefulWidget {
  final String url;
  const WebView({required this.url, super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
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
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}