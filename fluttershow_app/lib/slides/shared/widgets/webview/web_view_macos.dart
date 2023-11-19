import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_macos_webview/flutter_macos_webview.dart';

class WebViewMacOs extends StatelessWidget {
  const WebViewMacOs(this.url, {super.key});
  final String url;

  Future<void> _onOpenPressed() async => FlutterMacOSWebView().open(
        url: url,
      );

  @override
  Widget build(BuildContext context) {
    _onOpenPressed();

    return Center(
      child: CupertinoButton.filled(
        onPressed: _onOpenPressed,
        child: const Text('Reopen'),
      ),
    );
  }
}
