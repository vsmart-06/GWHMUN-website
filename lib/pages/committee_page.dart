import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:website/pages/header.dart";

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
    Size cardSize = Size(MediaQuery.of(context).size.width/4, MediaQuery.of(context).size.width/4);
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
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Card(
                              color: cardColors[0],
                              elevation: 10,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.white)
                              ),
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
                                onPressed: () {Navigator.pushNamed(context, "/unhrc");},
                                child: Image(image: 
                                  AssetImage("committeePage/UNHRC.png"))
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Card(
                              color: cardColors[1],
                              elevation: 10,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.white)
                              ),
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
                                onPressed: () {Navigator.pushNamed(context, "/unep");},
                                child: Image(image: 
                                  AssetImage("committeePage/UNEP.png"))
                              )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Card(
                              color: cardColors[2],
                              elevation: 10,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.white)
                              ),
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
                                onPressed: () {Navigator.pushNamed(context, "/disec");},
                                child: Image(image: 
                                  AssetImage("committeePage/DISEC.png"))
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Card(
                              color: cardColors[3],
                              elevation: 10,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.white)
                              ),
                              child: TextButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(cardSize),
                                  maximumSize: MaterialStateProperty.all<Size>(cardSize)
                                ),
                                onHover: (value) {
                                  if (value) {
                                    setState(() {
                                    cardColors[3] = Color(0x99313133);
                                    });
                                  }
                                  else {
                                    setState(() {
                                    cardColors[3] = Colors.black;
                                    });
                                  }
                                },
                                onPressed: () {Navigator.pushNamed(context, "/unsc");},
                                child: Image(image: 
                                  AssetImage("committeePage/UNSC.png"))
                              )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Card(
                              color: cardColors[4],
                              elevation: 10,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.white)
                              ),
                              child: TextButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(cardSize),
                                  maximumSize: MaterialStateProperty.all<Size>(cardSize)
                                ),
                                onHover: (value) {
                                  if (value) {
                                    setState(() {
                                    cardColors[4] = Color(0x99313133);
                                    });
                                  }
                                  else {
                                    setState(() {
                                    cardColors[4] = Colors.black;
                                    });
                                  }
                                },
                                onPressed: () {Navigator.pushNamed(context, "/disec");},
                                child: Image(image: 
                                  AssetImage("committeePage/AIPPM.png"))
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Card(
                              color: cardColors[5],
                              elevation: 10,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.white)
                              ),
                              child: TextButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(cardSize),
                                  maximumSize: MaterialStateProperty.all<Size>(cardSize)
                                ),
                                onHover: (value) {
                                  if (value) {
                                    setState(() {
                                    cardColors[5] = Color(0x99313133);
                                    });
                                  }
                                  else {
                                    setState(() {
                                    cardColors[5] = Colors.black;
                                    });
                                  }
                                },
                                onPressed: () {Navigator.pushNamed(context, "/unsc");},
                                child: Image(image: 
                                  AssetImage("committeePage/IPC.png"))
                              )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Card(
                              color: cardColors[6],
                              elevation: 10,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.white)
                              ),
                              child: TextButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(cardSize),
                                  maximumSize: MaterialStateProperty.all<Size>(cardSize)
                                ),
                                onHover: (value) {
                                  if (value) {
                                    setState(() {
                                    cardColors[6] = Color(0x99313133);
                                    });
                                  }
                                  else {
                                    setState(() {
                                    cardColors[6] = Colors.black;
                                    });
                                  }
                                },
                                onPressed: () {Navigator.pushNamed(context, "/disec");},
                                child: Image(image: 
                                  AssetImage("committeePage/JCC.png"))
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Card(
                              color: cardColors[7],
                              elevation: 10,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.white)
                              ),
                              child: TextButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(cardSize),
                                  maximumSize: MaterialStateProperty.all<Size>(cardSize)
                                ),
                                onHover: (value) {
                                  if (value) {
                                    setState(() {
                                    cardColors[7] = Color(0x99313133);
                                    });
                                  }
                                  else {
                                    setState(() {
                                    cardColors[7] = Colors.black;
                                    });
                                  }
                                },
                                onPressed: () {Navigator.pushNamed(context, "/unsc");},
                                child: Image(image: 
                                  AssetImage("committeePage/SOCHUM.png"))
                              )
                            ),
                          ),
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