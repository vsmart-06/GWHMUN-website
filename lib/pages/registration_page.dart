import 'dart:html';
import 'dart:js';

import "package:flutter/material.dart";
import 'package:webview_flutter/webview_flutter.dart';
import "package:website/pages/header.dart";
import 'package:flutter/foundation.dart' show kIsWeb;

class Registrations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  
    /*
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Form'),
      ),
      body: Center(
        child: kIsWeb ? buildWebForm() : buildMobileForm(),
      ),
    );
  }

  Widget buildWebForm() {
    return WebView(
      initialUrl: 'https://forms.gle/mUm1AjqPhvWhgA72A', 
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

  Widget buildMobileForm() {
    final double width = MediaQuery.of(context as BuildContext).size.width;
    final double height = MediaQuery.of(context as BuildContext).size.height;

    final String googleFormUrl = 'https://forms.gle/mUm1AjqPhvWhgA72A';

    return SingleChildScrollView(
      child: SizedBox(
        width: width,
        height: height,
        child: HtmlElementView(
          viewType: 'googleForm',
          key: UniqueKey(),
          onPlatformViewCreated: (_) {
            loadIframe(width, height, googleFormUrl);
          },
        ),
      ),
    );
  }

  void loadIframe(double width, double height, String url) {
    final String content = '''
      <html>
        <body style="margin: 0; padding: 0;">
          <iframe src="$url" width="$width" height="$height" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
        </body>
      </html>
    ''';

    final IFrameElement iframeElement = IFrameElement()
      ..width = width.toString()
      ..height = height.toString()
      ..srcdoc = content
      ..style.border = 'none';

    ui.platformViewRegistry.registerViewFactory(
      'googleForm',
      (int viewId) => iframeElement,
    );
    */
  }
}
