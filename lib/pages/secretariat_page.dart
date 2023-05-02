import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Secretariat extends StatelessWidget {
  Secretariat({super.key});

  String? titleFont = GoogleFonts.playfairDisplay().fontFamily;
  String? font = GoogleFonts.roboto().fontFamily;
  ScrollController scroll = ScrollController();

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
                  "SECRETARIAT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontFamily: titleFont
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096781696541655150/sec_1.png?width=760&height=760")), //Secretary General
                      Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096781697099509770/sec.png?width=760&height=760")) //Director General
                    ],
                  ),
                ),
                Text(
                  "ORGANIZING COMMITTEE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontFamily: titleFont
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096780149673967696/image.png?width=782&height=834")), //Registrations
                      Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096780255202652261/image.png?width=792&height=834")) //Acad
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1065212687052718082/1097484364318781450/ocs_2.png?width=582&height=606")), //log
                    Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1065212687052718082/1097504041979887746/ocs_4.png?width=395&height=558")) //tech
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1065212687052718082/1097499491122286663/ocs_3.png?width=395&height=558")), //design
                      Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1097140409530069134/image.png?width=1272&height=834")) //communication
                    ],
                  ),
                ),
              ],
            )
          ),
        )
      ),
    );
  }
}
