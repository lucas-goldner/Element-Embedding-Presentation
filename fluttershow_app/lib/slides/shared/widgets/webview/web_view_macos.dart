import 'package:flutter/material.dart';
import 'package:flutter_macos_webview/flutter_macos_webview.dart';

class WebViewMacOs extends StatelessWidget {
  const WebViewMacOs({super.key});

  Future<void> _onOpenPressed() async => FlutterMacOSWebView().open(
        url: 'https://google.com',
      );

  @override
  Widget build(BuildContext context) {
    _onOpenPressed();
    return const Text('MacOs');
  }
}
