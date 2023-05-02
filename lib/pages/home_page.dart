import "package:flutter/material.dart";
import "dart:async";
import "package:google_fonts/google_fonts.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Duration time = DateTime(2023, 4, 20, 8, 50).difference(DateTime.now());
  Timer? timer;
  int? days;
  int? hours;
  int? minutes;
  int? seconds;
  List<String> time_string = ["", "", "", ""];
  Color primaryColor = Colors.black;
  Color accentColor = Colors.white;
  Size buttonSize = Size(100, 100);
  String? font = GoogleFonts.playfairDisplay().fontFamily;
  String? fontTime = GoogleFonts.roboto().fontFamily;
  ScrollController? scroll = ScrollController();
  List<Color> buttonColors = [Colors.black, Colors.black, Colors.black];

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {setCountdown();});
  }

  void setCountdown() {
    setState(() {
      int seconds = time.inSeconds - 1;
      if (seconds < 0) {
        seconds = 0;
      }
      time = Duration(seconds: seconds);
    });
  }

  @override
  Widget build(BuildContext context) {
    time_string = ["", "", "", ""];
    days = time.inDays;
    if (days !< 10) {time_string[0] = "0"+days.toString();}
    else {time_string[0] = days.toString();}
    hours = time.inHours.remainder(24);
    if (hours !< 10) {time_string[1] = "0"+hours.toString();}
    else {time_string[1] = hours.toString();}
    minutes = time.inMinutes.remainder(60);
    if (minutes !< 10) {time_string[2] = "0"+minutes.toString();}
    else {time_string[2] = minutes.toString();}
    seconds = time.inSeconds.remainder(60);
    if (seconds !< 10) {time_string[3] = "0"+seconds.toString();}
    else {time_string[3] = seconds.toString();}

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
                  fontFamily: fontTime,
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
                  fontFamily: fontTime,
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
                  fontFamily: fontTime,
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
                  fontFamily: fontTime,
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(width: MediaQuery.of(context).size.width/3, height: MediaQuery.of(context).size.width/5, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1097141394793054259/image.png?width=1176&height=638"),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                            Navigator.pushNamed(context, "/committees");
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
                              "Committees",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: fontTime,
                                fontSize: 20
                              )
                            ),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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
                              Navigator.pushNamed(context, "/resources");
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
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Resources",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontTime,
                                  fontSize: 20
                                )
                              ),
                            )
                          ),
                        ),
                        TextButton(
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
                            Navigator.pushNamed(context, "/secretariat");
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
                              "Secretariat",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: fontTime,
                                fontSize: 20
                              )
                            ),
                          )
                        ),
                      ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: Text(
                    "Greetings Delegates! After years of drought for Junior MUN in our school, the old MSPMUN is now back on our event shelves. We now bring to you MSP's biggest event, where 150 delegates rack their heads to provide solutions for the world's most antagonizing problems. From fiery debate to word-twisting manipulation, delegates receive the closest replica of what they would face in the Bangalore MUN Circuit. Many delegates over the years participating in the school's JMUN go from being the most shroud lobbyists to the most powerful public speaker, while many others receive their first taste of courage in the public. \n\nLadies and Gentlemen, we present to you GWHJMUN 2023!",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: font,
                      fontSize: 20
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "The conference starts in:",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: font,
                    fontSize: 25
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              time_string[0],
                              style: TextStyle(
                                backgroundColor: primaryColor,
                                color: accentColor,
                                fontFamily: fontTime,
                                fontSize: 40
                              ),
                            ),
                          ),
                          Text(
                            "Days",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: font,
                              fontSize: 20
                            )
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              time_string[1],
                              style: TextStyle(
                                backgroundColor: primaryColor,
                                color: accentColor,
                                fontFamily: fontTime,
                                fontSize: 40
                              ),
                            ),
                          ),
                          Text(
                            "Hours",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: font,
                              fontSize: 20
                            )
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              time_string[2],
                              style: TextStyle(
                                backgroundColor: primaryColor,
                                color: accentColor,
                                fontFamily: fontTime,
                                fontSize: 40
                              ),
                            ),
                          ),
                          Text(
                            "Minutes",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: font,
                              fontSize: 20
                            )
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              time_string[3],
                              style: TextStyle(
                                backgroundColor: primaryColor,
                                color: accentColor,
                                fontFamily: fontTime,
                                fontSize: 40
                              ),
                            ),
                          ),
                          Text(
                            "Seconds",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: font,
                              fontSize: 20
                            )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}