import "package:flutter/material.dart";
import "dart:html";
import "package:google_fonts/google_fonts.dart";
import "package:website/pages/header.dart";
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
    Size cardSize = Size(2.4*MediaQuery.of(context).size.width/4, MediaQuery.of(context).size.width/4);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:
        Column(
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "RESOURCES",
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
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    controller: scroll,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ColorFiltered(
                            colorFilter: ColorFilter.matrix([
                              0.2126, 0.7152, 0.0722, 0, 0,
                              0.2126, 0.7152, 0.0722, 0, 0,
                              0.2126, 0.7152, 0.0722, 0, 0,
                              0, 0, 0, 1, 0
                            ]),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("code_of_conduct.jpg"),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Card(
                                color: Colors.transparent,
                                elevation: 10,
                                
                                child: TextButton(
                                  style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all<Size>(cardSize),
                                    maximumSize: MaterialStateProperty.all<Size>(cardSize)
                                  ),
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                      cardColors[0] = Color(0x99313133);
                                      });
                                    }
                                    else {
                                      setState(() {
                                      cardColors[0] = Colors.black;
                                      });
                                    }
                                  },
                                  onPressed: () {window.open("https://docs.google.com/document/d/1MSTvjv-TC2RxX49Iq090i7dr5wusqyjWmXL8sTFZis8/edit?usp=drivesdk", "Code of Conduct");},
                                  child: Text(
                                    "Code of Conduct",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontFamily: titleFont
                                    ),
                                  )
                                )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ColorFiltered(
                            colorFilter: ColorFilter.matrix([
                              0.2126, 0.7152, 0.0722, 0, 0,
                              0.2126, 0.7152, 0.0722, 0, 0,
                              0.2126, 0.7152, 0.0722, 0, 0,
                              0, 0, 0, 1, 0
                            ]),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("background_guides.jpg"),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Card(
                                color: Colors.transparent,
                                elevation: 10,
                                
                                child: TextButton(
                                  style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all<Size>(cardSize),
                                    maximumSize: MaterialStateProperty.all<Size>(cardSize)
                                  ),
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                      cardColors[1] = Color(0x99313133);
                                      });
                                    }
                                    else {
                                      setState(() {
                                      cardColors[1] = Colors.black;
                                      });
                                    }
                                  },
                                  onPressed: () {window.open("https://drive.google.com/drive/folders/1PvWVxG5gLpb0p990iga8NNrM7OZJnFxJ?usp=sharing", "Background Guides");},
                                  child: Text(
                                    "Background Guides",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontFamily: titleFont
                                    ),)
                                )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ColorFiltered(
                            colorFilter: ColorFilter.matrix([
                              0.2126, 0.7152, 0.0722, 0, 0,
                              0.2126, 0.7152, 0.0722, 0, 0,
                              0.2126, 0.7152, 0.0722, 0, 0,
                              0, 0, 0, 1, 0
                            ]
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("rules_of_procedure.jpg"),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Card(
                                color: Colors.transparent,
                                elevation: 10,
                                
                                child: TextButton(
                                  style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all<Size>(cardSize),
                                    maximumSize: MaterialStateProperty.all<Size>(cardSize)
                                  ),
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                      cardColors[2] = Color(0x99313133);
                                      });
                                    }
                                    else {
                                      setState(() {
                                      cardColors[2] = Colors.black;
                                      });
                                    }
                                  },
                                  onPressed: () {window.open("https://drive.google.com/file/d/1xATgIXdRyIn1MgnJ4WkdKt1XRMP_l9Vi/view?usp=sharing", "Rules of Procedure");},
                                  child: Text(
                                    "Rules of Procedure",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontFamily: titleFont
                                      ),)
                                )
                              ),
                            ),
                          ),
                        ),
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
