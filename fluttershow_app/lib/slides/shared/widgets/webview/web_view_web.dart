import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';

class MyWidgetFactory extends WidgetFactory with WebViewFactory {}

class WebViewWeb extends StatelessWidget {
  const WebViewWeb(this.url, {super.key});
  final String url;

  @override
  Widget build(BuildContext context) {
    return HtmlWidget(
      '<iframe src="$url"></iframe>',
      factoryBuilder: MyWidgetFactory.new,
    );
  }
}
