// ignore_for_file: must_be_immutable

import "dart:html";
import "dart:ui" as ui;

import "package:flutter/material.dart";
import "package:pointer_interceptor/pointer_interceptor.dart";
import "package:website/widgets/header.dart";


class FormPage extends StatefulWidget {
  String link;
  FormPage({super.key, required this.link});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  Map? data;
  IFrameElement iFrame = IFrameElement();
  late HtmlElementView formContainer;

  @override
  Widget build(BuildContext context) {
    iFrame.src = widget.link;
    iFrame.style.border = "none";
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory("iFrame", (int viewId) => iFrame);
    formContainer = HtmlElementView(viewType: "iFrame");
    return Scaffold(
      appBar: getTopBar(context),
      drawer: PointerInterceptor(child: getDrawer(context)),
      backgroundColor: Colors.black,
      body: Center(
        child:
        Column(
          children: [
            Expanded(
              child: formContainer,
            ),
          ],
        ),
      ),
    );
  }
}