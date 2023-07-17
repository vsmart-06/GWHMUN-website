import "dart:html";
import "dart:ui" as ui;

import "package:flutter/material.dart";
import "package:pointer_interceptor/pointer_interceptor.dart";
import "package:website/widgets/header.dart";


class Registrations extends StatefulWidget {
  const Registrations({super.key});

  @override
  State<Registrations> createState() => _RegistrationsState();
}

class _RegistrationsState extends State<Registrations> {

  IFrameElement iFrame = IFrameElement();
  late HtmlElementView formContainer;

  @override
  Widget build(BuildContext context) {
    iFrame.src = "https://forms.gle/4viXkb1j5Q2oeQzF6";
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