import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "dart:html";

class UNSC extends StatefulWidget {
  UNSC({super.key});

  @override
  State<UNSC> createState() => _UNSCState();
}

class _UNSCState extends State<UNSC> {
  String? fontMain = GoogleFonts.playfairDisplay().fontFamily;

  String? font = GoogleFonts.roboto().fontFamily;

  ScrollController scroll = ScrollController();
  ScrollController scrollCrisis = ScrollController();

  List<Color> buttonColors = [Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black, Colors.black];

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
                  "The United Nations Security Council",
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
                    "Agenda: Emergency Security Council meeting - South China Sea Dispute",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain,
                      fontSize: 30
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 100, 30),
                  child: Text(
                    '"The failure of the United Nations - My failure is maybe, in retrospective, that I was not enough aggressive with the members of the Security Council" (Boutros Boutros-Ghali, former Secretary General of the UN)',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain,
                      fontSize: 20,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(buttonColors[0]),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white)
                      )
                    )
                  ),
                  onPressed: () {
                    window.open("https://drive.google.com/file/d/1KJ0j38pROav3G5iC0kyZDPoqlynXxSQE/view?usp=sharing", "Background Guide");
                  }, 
                  onHover: (value) {
                    if (value) {
                      setState(() {
                        buttonColors[0] = Color(0x99313133);
                      });
                    }
                    else {
                      setState(() {
                        buttonColors[0] = Colors.black;
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
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                    indent: 150,
                    endIndent: 150,
                  ),
                ),
                Text(
                  "Crisis Documents",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: fontMain,
                    fontSize: 30
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 300,
                  child: RawScrollbar(
                    thumbColor: Color(0xFF313133),
                    thickness: 10,
                    thumbVisibility: true,
                    trackVisibility: true,
                    controller: scrollCrisis,
                    child: SingleChildScrollView(
                      controller: scrollCrisis,
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(buttonColors[1]),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        side: BorderSide(color: Colors.white)
                                      )
                                    )
                                  ),
                                  onPressed: () {
                                    window.open("https://drive.google.com/file/d/1ToBMYk4iwtqCh-EXwuEcqzeE5AjU6akr/view?usp=sharing", "Mutual Defense Treaty China-France");
                                  }, 
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                        buttonColors[1] = Color(0x99313133);
                                      });
                                    }
                                    else {
                                      setState(() {
                                        buttonColors[1] = Colors.black;
                                      });
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                    "Mutual Defense Treaty China-France",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: fontMain,
                                        fontSize: 20
                                      )
                                    ),
                                  )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(buttonColors[2]),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        side: BorderSide(color: Colors.white)
                                      )
                                    )
                                  ),
                                  onPressed: () {
                                    window.open("https://drive.google.com/file/d/1q_hh0_IAC5A4rjIQE3SdVWvtAJyUXmIP/view?usp=sharing", "East Pacific Treaty");
                                  }, 
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                        buttonColors[2] = Color(0x99313133);
                                      });
                                    }
                                    else {
                                      setState(() {
                                        buttonColors[2] = Colors.black;
                                      });
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "East Pacific Treaty",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: fontMain,
                                        fontSize: 20
                                      )
                                    ),
                                  )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(buttonColors[3]),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        side: BorderSide(color: Colors.white)
                                      )
                                    )
                                  ),
                                  onPressed: () {
                                    window.open("https://drive.google.com/file/d/1bz_DXdREkGfHDsC_Xj3dsSLhyyO1ALTC/view?usp=sharing", "Treaty of Peace Egypt-Israel");
                                  }, 
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                        buttonColors[3] = Color(0x99313133);
                                      });
                                    }
                                    else {
                                      setState(() {
                                        buttonColors[3] = Colors.black;
                                      });
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Treaty of Peace Egypt-Israel",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: fontMain,
                                        fontSize: 20
                                      )
                                    ),
                                  )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(buttonColors[4]),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        side: BorderSide(color: Colors.white)
                                      )
                                    )
                                  ),
                                  onPressed: () {
                                    window.open("https://drive.google.com/file/d/171PWMIfzjzOeo6xSRDu6hZHSXqIJBQzs/view?usp=sharing", "Letter to Director General");
                                  }, 
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                        buttonColors[4] = Color(0x99313133);
                                      });
                                    }
                                    else {
                                      setState(() {
                                        buttonColors[4] = Colors.black;
                                      });
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Letter to Director General",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: fontMain,
                                        fontSize: 20
                                      )
                                    ),
                                  )
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(buttonColors[5]),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        side: BorderSide(color: Colors.white)
                                      )
                                    )
                                  ),
                                  onPressed: () {
                                    window.open("https://drive.google.com/file/d/1xJZ9EW5HEU0fhqfaicDOCjj26Jv6KGRt/view?usp=sharing", "ITLOS Application Thailand-USA");
                                  }, 
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                        buttonColors[5] = Color(0x99313133);
                                      });
                                    }
                                    else {
                                      setState(() {
                                        buttonColors[5] = Colors.black;
                                      });
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "ITLOS Application Thailand-USA",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: fontMain,
                                        fontSize: 20
                                      )
                                    ),
                                  )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(buttonColors[6]),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        side: BorderSide(color: Colors.white)
                                      )
                                    )
                                  ),
                                  onPressed: () {
                                    window.open("https://drive.google.com/file/d/1OiR6G5kGzaOvTuxEe9Y8Pyvi38dtYMuc/view?usp=sharing", "ITLOS Counter Memorial - Philippines");
                                  }, 
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                        buttonColors[6] = Color(0x99313133);
                                      });
                                    }
                                    else {
                                      setState(() {
                                        buttonColors[6] = Colors.black;
                                      });
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "ITLOS Counter Memorial - Philippines",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: fontMain,
                                        fontSize: 20
                                      )
                                    ),
                                  )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(buttonColors[7]),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        side: BorderSide(color: Colors.white)
                                      )
                                    )
                                  ),
                                  onPressed: () {
                                    window.open("https://drive.google.com/file/d/1Nmyv9uVxsN4RKm5hKbvuBOsygaX_sbyv/view?usp=sharing", "ITLOS Case Letter");
                                  }, 
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                        buttonColors[7] = Color(0x99313133);
                                      });
                                    }
                                    else {
                                      setState(() {
                                        buttonColors[7] = Colors.black;
                                      });
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "ITLOS Case Letter",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: fontMain,
                                        fontSize: 20
                                      )
                                    ),
                                  )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(buttonColors[8]),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        side: BorderSide(color: Colors.white)
                                      )
                                    )
                                  ),
                                  onPressed: () {
                                    window.open("https://drive.google.com/file/d/1cb-Ccw5p8mI9QUU02g3U2n-ceED2GseY/view?usp=sharing", "FROG - Amended");
                                  }, 
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                        buttonColors[8] = Color(0x99313133);
                                      });
                                    }
                                    else {
                                      setState(() {
                                        buttonColors[8] = Colors.black;
                                      });
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "FROG - Amended",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: fontMain,
                                        fontSize: 20
                                      )
                                    ),
                                  )
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
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
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096764581088600144/image.png?width=638&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                "Rahul made his start in MUNs in the original running of the MSPMUN. 20 MUNs later, he has only failed to place in 3. He cannot wait to serve as a chair and this MUN's director-general watching delegates make their own mark (he's a bit more emotional than he admits). Often being the most outspoken (and irritating) delegate in the room, he loves lobbying and giving thunderous speeches - finding ways to make fun of half of the committee in the process. Frequently getting barred at a rate that rivals AIPPM delegates for making silly goofy jokes, he prefers committees like UNSC and DISEC where blackmail and ultimatums are considered acceptable forms of diplomacy. However, he never compromises on international law and regulations and scoffs at delegates who are all bark no bite. Outside of MUNs, he loves music, hockey and a plethora of other things (he swears he's interesting) and aspires to get into computers. ",
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
                                "The Vice Chair of UNSC has been a passionate munner in the Bangalore circuit ever since her first MUN in the 7th grade sparked an insatiable thirst for global politics and diplomacy. You can often find her being the most dramatic in committee, although never lacking in strategy and research. Her love for negotiation and fiery debate is driven by her interest in current affairs, social justice and literature. Crisis driven committees like UNSC is where she feels most at home and will never decline an opportunity to prove another delegate wrong. Apart from MUN, she dabbles in photography and writing, directing most of her time to further pursuing research about judicial prejudices to support her prospective career in law. ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096764295917879316/image.png?width=638&height=834"),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096764623191035914/image.png?width=638&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                "Vipran Vasan is a passionate and accomplished Model UN delegate with a diverse range of interests, including Physics, Mathematics, Video Games, and Sports. With experience of participating in MUN conferences across Bangalore, Vipran has placed in both General Assemblies and Crisis committees. In addition to his MUN experience, Vipran has a background in debating and public speaking, which provides them with a unique perspective on global issues and international relations. His passion for STEM fuels his interest in understanding how technology and innovation can address the world's most pressing challenges. They are also an avid video game enthusiast, recognizing the power of gaming to bring people together and foster communication and teamwork. As a former delegate, Vipran understands the importance of providing a fair and engaging experience for all participants. They are committed to ensuring that delegates have the opportunity to engage in thoughtful debate and negotiation, while also adhering to the rules and procedures of the conference. \n\nVipran Vasan is excited to serve his first Executive Board position as Moderator of the UNSC. Vipran wishes to give the delegates a substantial impression of MUNs for them to carry it on in the future. For this, Vipran looks forward to working with delegates to create a productive and engaging experience for all. ",
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