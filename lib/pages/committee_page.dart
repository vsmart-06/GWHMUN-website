import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Committee extends StatefulWidget {
  @override
  State<Committee> createState() => _CommitteeState();
}

class _CommitteeState extends State<Committee> {
  String? font = GoogleFonts.roboto().fontFamily;
  String? titleFont = GoogleFonts.playfairDisplay().fontFamily;

  List<Color> cardColors = [Colors.black, Colors.black, Colors.black, Colors.black];
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "COMMITTEES",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
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
                                child: Image(image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096448594669736077/cards-removebg-preview.png?width=834&height=834"),)
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
                                child: Image(image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096456906316451890/cards_3.png?width=834&height=834"),)
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
                                child: Image(image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096452662171541646/cards__1_-removebg-preview.png?width=834&height=834"),)
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
                                child: Image(image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096454839606718546/cards-removebg-preview.png?width=834&height=834"),)
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