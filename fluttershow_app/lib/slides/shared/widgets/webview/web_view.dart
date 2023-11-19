import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/slides/shared/widgets/webview/web_view_macos.dart';
import 'package:flutter_show/slides/shared/widgets/webview/web_view_web.dart';

class WebView extends StatelessWidget {
  const WebView(this.url, {super.key});
  final String url;

  @override
  Widget build(BuildContext context) => switch ((Platform.isMacOS, kIsWeb)) {
        (true, false) => WebViewMacOs(url),
        (false, true) => WebViewWeb(url),
        (_, _) => throw UnsupportedError('Unsupported platform'),
      };
}
