import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:website/widgets/header.dart";
import 'package:website/widgets/committee_button.dart';

class Committee extends StatefulWidget {
  @override
  State<Committee> createState() => _CommitteeState();
}

class _CommitteeState extends State<Committee> {
  String? font = GoogleFonts.roboto().fontFamily;
  String? titleFont = GoogleFonts.ebGaramond().fontFamily;

  List<Color> cardColors = [Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black,];
  ScrollController scroll = ScrollController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "COMMITTEES",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: titleFont
                ),
              ),
            ),
            Expanded(
              child: RawScrollbar(
                thumbColor: Color(0xFF313133),
                thickness: 10,
                thumbVisibility: true,
                trackVisibility: true,
                controller: scroll,
                child: SingleChildScrollView(
                  controller: scroll,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommitteeButton(
                            imagePath: 'committee_page/UNHRC.png',
                            websitePath: "/unhrc",),
                          CommitteeButton(
                            imagePath: 'committee_page/UNEP.png',
                            websitePath: "/unep",),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommitteeButton(
                            imagePath: 'committee_page/DISEC.png',
                            websitePath: "/disec",),
                          CommitteeButton(
                            imagePath: 'committee_page/UNSC.png',
                            websitePath: "/unsc",),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommitteeButton(
                            imagePath: 'committee_page/AIPPM.png',
                            websitePath: "/aippm",),
                          CommitteeButton(
                            imagePath: 'committee_page/IPC.png',
                            websitePath: "/unhrc",),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommitteeButton(
                            imagePath: 'committee_page/JCC.png',
                            websitePath: "/unhrc",),
                          CommitteeButton(
                            imagePath: 'committee_page/SOCHUM.png',
                            websitePath: "/unep",),
                        ],
                      ),
                    ],
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