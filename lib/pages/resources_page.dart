import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:website/widgets/header.dart";
import 'package:website/widgets/resources_button.dart';
import "package:website/widgets/footer.dart";

class Resources extends StatefulWidget {
  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  List<Color> accentColor = [Colors.white, Colors.white, Colors.white];
  String? font = GoogleFonts.roboto().fontFamily;
  String? titleFont = GoogleFonts.ebGaramond().fontFamily;
  List<Color> cardColors = [Colors.black, Colors.black, Colors.black];
  ScrollController scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context),
      drawer: getDrawer(context),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "RESOURCES",
                style: TextStyle(
                    color: Colors.white, fontSize: 35, fontFamily: titleFont),
              ),
            ),
            Expanded(
              child: RawScrollbar(
                thumbColor: Color(0xFF313133),
                thickness: 10,
                thumbVisibility: true,
                trackVisibility: true,
                controller: scroll,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    controller: scroll,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ResourcesButton(
                          imagePath: 'assets/code_of_conduct.jpg',
                          websitePath:
                              "https://docs.google.com/document/d/1MSTvjv-TC2RxX49Iq090i7dr5wusqyjWmXL8sTFZis8/edit?usp=drivesdk",
                          name: "Code of Conduct",
                        ),
                        ResourcesButton(
                          imagePath: 'assets/background_guides.jpg',
                          websitePath:
                              "https://drive.google.com/drive/folders/1PvWVxG5gLpb0p990iga8NNrM7OZJnFxJ?usp=sharing",
                          name: "Background Guides",
                        ),
                        ResourcesButton(
                          imagePath: "rules_of_procedure.jpg",
                          websitePath:
                              "https://drive.google.com/file/d/1xATgIXdRyIn1MgnJ4WkdKt1XRMP_l9Vi/view?usp=sharing",
                          name: "Rules Of Procedure",
                        ),
                        Footer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
