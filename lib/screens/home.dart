import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: WebviewScaffold(
        url: "https://www.google.com",
        withJavascript: true,
        supportMultipleWindows: true,
        withLocalStorage: true,
        allowFileURLs: true,
        enableAppScheme: true,
        appCacheEnabled: true,
        hidden: false,
        scrollBar: true,
        geolocationEnabled: false,
        clearCookies: false,
      ),
    );
  }
}
