import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "dart:html";

class UNHRC extends StatefulWidget {
  UNHRC({super.key});

  @override
  State<UNHRC> createState() => _UNHRCState();
}

class _UNHRCState extends State<UNHRC> {
  String? fontMain = GoogleFonts.playfairDisplay().fontFamily;

  String? font = GoogleFonts.roboto().fontFamily;

  ScrollController scroll = ScrollController();
  Color buttonColor = Colors.black;

  @override
  Widget build(BuildContext context) {
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
                Text(
                  "The United Nations Human Rights Council",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: fontMain,
                    fontSize: 50
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 30, 100, 30),
                  child: Text(
                    "Agenda: Discussing the Human Rights Violations in the Middle East with special emphasis on the current hostile situation in Iran.",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain,
                      fontSize: 30
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white)
                      )
                    )
                  ),
                  onPressed: () {
                    window.open("https://drive.google.com/file/d/1d0qOkj0xTIZfK0qcRgRuUU6-_I-vA8hP/view?usp=sharing", "Background Guide");
                  }, 
                  onHover: (value) {
                    if (value) {
                      setState(() {
                        buttonColor = Color(0x99313133);
                      });
                    }
                    else {
                      setState(() {
                        buttonColor = Colors.black;
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Background Guide",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: fontMain,
                        fontSize: 20
                      )
                    ),
                  )
                ),
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                    indent: 150,
                    endIndent: 150,
                  ),
                ),
                Text(
                  "The Executive Board",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: fontMain,
                    fontSize: 40
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096773157618200646/image.png?width=602&height=832"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                "With a seemingly inexhaustible tolerance for fruitless debates and a passion for politics, Akshara Bhat is always ready for a challenge. Apart from arguing way too much with anyone willing to partake, she spends her time reading books, writing film reviews, and trying to explore new corners of the city. Often known for being the most diplomatic and respectful delegate in committee, her tact has led her to win accolades at prestigious MUNs across India. Akshara is a firm believer in using MUN as a platform for change and invites the delegates for an enthralling and expeditious conference.  ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*2/5,
                              child: Text(
                                "Back from a break from MUNs, here comes your quirky Vice Chair for UNHRC, Ashvik Mishra. Being fairly experienced, he has been through about 15 MUNs since 2018 with his first Mun being GWHJMUN (or as it was known before, MSPMUN) itself. Recently placing in TISBMUN as DPRK, he loves to represent communist or socialist countries, probably just to make fun of capitalist countries and call everyone in committee a comrade. Outside of committee, he's obsessed with cars, loves to listen to music and usually doesn't touch grass (probably is a discord mod). ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096773184537231400/image.png?width=602&height=832"),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1098167225296355398/Screenshot_2023-04-19_at_2.13.08_PM.png?width=644&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                "Amisha is a 9th grader who discovered her love for MUNs last August, starting much too ambitiously with HMUN. Armed by wonderful experiences of past MUNs, and placements at MUNs like IRMUN, TISBMUN, GEARMUN, and CLMUN, she's eager to provide her juniors with a wonderful first MUN experience. In addition to MUNs, she loves debate (arguing), reading, and writing ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      )
    );
  }
}
