import "package:flutter/material.dart";
import "dart:async";
import "package:google_fonts/google_fonts.dart";
import "package:website/pages/header.dart";
import "package:website/pages/footer.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Duration time = DateTime(2023, 8, 20, 8, 50).difference(DateTime.now());
  Timer? timer;
  int? days;
  int? hours;
  int? minutes;
  int? seconds;
  List<String> time_string = ["", "", "", ""];
  Color primaryColor = Colors.black;
  Color accentColor = Colors.white;
  Size buttonSize = Size(100, 100);
  String? font = GoogleFonts.questrial().fontFamily;
  String? fontTime = GoogleFonts.roboto().fontFamily;
  ScrollController? scroll = ScrollController();
  List<Color> buttonColors = [Colors.black, Colors.black, Colors.black];
  Color textcolor = Colors.white;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {setCountdown();});
  }

  void setCountdown() {
    if (mounted) {
      setState(() {
        int seconds = time.inSeconds - 1;
        if (seconds < 0) {
          seconds = 0;
        }
        time = Duration(seconds: seconds);
      });
    }
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
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Header(),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(width: MediaQuery.of(context).size.width/3, height: MediaQuery.of(context).size.width/5, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1121068938416103454/mun_logo.png?width=1452&height=1026"),),
                      Text(
                          "Greenwood High Model\nUnited Nations 2023",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: font,
                            fontSize: 40
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Text(
                            "12-15 AUGUST 2023 | BENGALURU, INDIA",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: font,
                              fontSize: 28
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(textcolor),
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.transparent),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                            child: Text(
                              "Registrations Open Now",
                              style: TextStyle(
                                color: textcolor,
                                fontFamily: font,
                                fontSize: 28
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        onPressed: (){
                          Navigator.popAndPushNamed(context, "/registrations");
                        },
                        onHover: (value){
                          if(value){
                            setState(() {
                              textcolor = Colors.green;
                            });
                          }
                          else {
                            setState(() {
                              textcolor = Colors.white;
                            });
                          }
                        },
            
                        ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                        child: Text(
                          "Greetings Delegates! After years of drought for Junior MUN in our school, the old MSPMUN is now back on our event shelves. We now bring to you MSP's biggest event, where 150 delegates rack their heads to provide solutions for the world's most antagonizing problems. From fiery debate to word-twisting manipulation, delegates receive the closest replica of what they would face in the Bangalore MUN Circuit. Many delegates over the years participating in the school's JMUN go from being the most shroud lobbyists to the most powerful public speaker, while many others receive their first taste of courage in the public. \n\nDelegates, we present to you GWHJMUN 2023!",
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
                      Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}