import "package:flutter/material.dart";
import "dart:html";
import "package:google_fonts/google_fonts.dart";

class Resources extends StatefulWidget {
  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  List<Color> accentColor = [Colors.white, Colors.white, Colors.white];
  String? font = GoogleFonts.roboto().fontFamily;
  String? titleFont = GoogleFonts.playfairDisplay().fontFamily;
  List<Color> cardColors = [Colors.black, Colors.black, Colors.black];
  ScrollController scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size cardSize = Size(MediaQuery.of(context).size.width/4, MediaQuery.of(context).size.width/4);
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 80,
              child: DrawerHeader(
                child: Text(
                  "GWHJMUN 2023",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.playfairDisplay().fontFamily,
                    fontSize: 30
                  ),
                )
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/");
              },
            ),
            ListTile(
              title: Text(
                "Committees",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/committees");
              },
            ),
            ListTile(
              title: Text(
                "Resources",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/resources");
              },
            ),
            ListTile(
              title: Text(
                "Secretariat",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/secretariat");
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "RESOURCES",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontFamily: titleFont
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
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
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
                              onPressed: () {window.open("https://docs.google.com/document/d/1MSTvjv-TC2RxX49Iq090i7dr5wusqyjWmXL8sTFZis8/edit?usp=drivesdk", "Code of Conduct");},
                              child: Image(image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1097164610328596581/image.png?width=902&height=392"),)
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
                              onPressed: () {window.open("https://drive.google.com/drive/folders/1PvWVxG5gLpb0p990iga8NNrM7OZJnFxJ?usp=sharing", "Background Guides");},
                              child: Image(image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1097164551507677355/image.png?width=902&height=388"),)
                            )
                          ),
                        ),
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
                              onPressed: () {window.open("https://drive.google.com/file/d/1xATgIXdRyIn1MgnJ4WkdKt1XRMP_l9Vi/view?usp=sharing", "Rules of Procedure");},
                              child: Image(image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1097164586727252099/image.png?width=898&height=384"),)
                            )
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
