import "package:flutter/material.dart";
import "package:flutter/animation.dart";
import "dart:async";
import "package:google_fonts/google_fonts.dart";
import "package:website/widgets/header.dart";
import "package:website/widgets/footer.dart";
import 'package:carousel_slider/carousel_slider.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Duration time = DateTime(2023, 8, 25, 8, 50).difference(DateTime.now());
  Timer? timer;
  int? days;
  int? hours;
  int? minutes;
  int? seconds;
  List<String> time_string = ["", "", "", ""];
  Color primaryColor = Colors.black;
  Color accentColor = Colors.white;
  Size buttonSize = Size(100, 100);
  String? font = GoogleFonts.ebGaramond().fontFamily;
  String? fontTime = GoogleFonts.roboto().fontFamily;
  ScrollController scroller = ScrollController();
  PageController? pageScroll = PageController(keepPage: false);
  List<Color> buttonColors = [Colors.black, Colors.black, Colors.black];
  Color textcolor = Colors.white;
  List imageCarousel = [];

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setCountdown();
    });
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

  void listAssetFiles() async {
    imageCarousel = [];
    for (int i = 1; i <= 19; i++) {
      imageCarousel.add("image_$i.jpg");
    }
  }

  @override
  Widget build(BuildContext context) {
    time_string = ["", "", "", ""];
    days = time.inDays;
    if (days! < 10) {
      time_string[0] = "0" + days.toString();
    } else {
      time_string[0] = days.toString();
    }
    hours = time.inHours.remainder(24);
    if (hours! < 10) {
      time_string[1] = "0" + hours.toString();
    } else {
      time_string[1] = hours.toString();
    }
    minutes = time.inMinutes.remainder(60);
    if (minutes! < 10) {
      time_string[2] = "0" + minutes.toString();
    } else {
      time_string[2] = minutes.toString();
    }
    seconds = time.inSeconds.remainder(60);
    if (seconds! < 10) {
      time_string[3] = "0" + seconds.toString();
    } else {
      time_string[3] = seconds.toString();
    }
    listAssetFiles();
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: getTopBar(context),
        drawer: getDrawer(context),
        body: Center(
            child: RawScrollbar(
              thumbColor: Color(0xFF313133),
              thickness: 10,
              thumbVisibility: true,
              trackVisibility: true,
              controller: scroller,
              child: SingleChildScrollView(
                controller: scroller,
                child: Column(
                        children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("carousel/image_18.jpg"),
                          fit: BoxFit.fitWidth,
                          opacity: 0.4)),
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Color(0x55000000)
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("gwhmun_logo.png",
                            height: MediaQuery.of(context).size.height*0.4,),
                            Text(
                              "Greenwood High Model United Nations 2023",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: font,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Text(
                                "25-27 AUGUST 2023",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: font,
                                    fontSize: 28),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            /*TextButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(textcolor),
                                backgroundColor: MaterialStatePropertyAll<Color>(
                                    Colors.transparent),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(50, 20, 50, 20),
                                child: Text(
                                  "Registrations Open Now",
                                  style: TextStyle(
                                    color: textcolor,
                                    fontFamily: font,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/registrations");
                              },
                              onHover: (value) {
                                if (value) {
                                  setState(() {
                                    textcolor = Colors.green;
                                  });
                                } else {
                                  setState(() {
                                    textcolor = Colors.white;
                                  });
                                }
                              },
                            ),
                            */
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "The conference starts in:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: font,
                                    fontSize: 30),
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
                                              color: accentColor,
                                              fontFamily: fontTime,
                                              fontSize: 40),
                                        ),
                                      ),
                                      Text("Days",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: font,
                                              fontSize: 20))
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
                                              color: accentColor,
                                              fontFamily: fontTime,
                                              fontSize: 40),
                                        ),
                                      ),
                                      Text("Hours",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: font,
                                              fontSize: 20))
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
                                              color: accentColor,
                                              fontFamily: fontTime,
                                              fontSize: 40),
                                        ),
                                      ),
                                      Text("Minutes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: font,
                                              fontSize: 20))
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
                                              color: accentColor,
                                              fontFamily: fontTime,
                                              fontSize: 40),
                                        ),
                                      ),
                                      Text("Seconds",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: font,
                                              fontSize: 20))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 40, 39, 39),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Letter from the Secretary General",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: font,
                          fontSize: 50
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image: AssetImage("ocs/vanshHome.png"), width: MediaQuery.of(context).size.width * 0.4),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Text(
                                  "Dear Delegates,\n\nIt is with great pleasure and honor that I welcome you to the Greenwood High Model United Nations conference. As the Secretary-General, I am grateful for the opportunity to witness the passion and intellectual prowess of each one of you.\n\nAs someone who has been a part of the MUN circuit since 2018, I can truly say that, participating in a Model United Nations (MUN) conference offers a transformative journey of diplomacy and knowledge. MUN fosters empathetic collaboration to address global challenges, shaping future leaders with humility and strategic acumen. Throughout this conference, we look forward to have the unique chance to engage in thought-provoking debates, innovative problem-solving, and collaborative decision-making. It is our collective duty to forget our personal beliefs, opinions, and prejudices and collectively work towards finding sustainable and peaceful solutions for the challenges that lie ahead.\n\nAs we embark on this journey together, let us remember the words of Kofi Annan, \"More than ever before in human history, we share a common destiny. We can master it only if we face it together. And that, my friends, is why we have the United Nations.\"\n\nOnce again, welcome to the Model United Nations conference. I am excited to witness the incredible achievements we will attain throughout this enlightening journey.\n\nSincerely yours,\nVansh Abrol, Secretary General",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: font,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                        child: Divider(
                          color: Colors.white,
                          height: 1,
                          thickness: 1
                        )
                      ),
                      Text(
                        "Letter from the Director General",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: font,
                          fontSize: 50
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Text(
                                  "Dear Delegates,\n\nThe stage is set. The curtains are pulling aside to reveal the main act: GWHMUN '23. As the Director General of this diplomatic conference, I extend a welcome to each of you.\n\nThe world outside resounds with challenges that mirror the uncertainty of fate. The threat of climate change threatens to drown us in its waters, while the clash of conflict resonates, leaving scars on the skin of civilization. Yet, amid the hardships, we find hope. For it is in the artistry of your diplomacy, the expressiveness of your eloquence, and the dance of your intellect that the world shall witness change.\n\nDelegates, you are not mere spectators in this play. You are the protagonists, the heroes and the heroines (and in some cases villains) of this grand narrative. As the spotlight shines upon each of you, seize the moment to deliver wisdom, engage in diplomacy, and participate in acts of cooperation.\n\nThroughout the days that lie ahead, you shall navigate the corridors of diplomacy and forge alliances and friendships that last a life time. But remember, dear delegates, that every act matters, every word spoken holds weight, and every decision shapes the course of history.\n\nAnd so, let the Green Wood High MUN begin! Dazzle the world with your brilliance, and let the echoes of your achievements reverberate across time and space. Embrace the drama. Embrace the action. For it is in this crucible of passion and intellect that you shall script a tale of unity, compassion, and progress.\n\nSincerely,\nRahul, Director General",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: font,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Image(image: AssetImage("ocs/rahulHome.png"), width: MediaQuery.of(context).size.width * 0.4),
                          ],
                        )  
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Photo Gallery",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: font,
                            fontSize: 50
                          )
                        )
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          viewportFraction: 0.5,
                          height: 400.0,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 2)),
                        items: imageCarousel.map((assetfile) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Padding(
                                padding: const EdgeInsets.all(30),
                                child: Image(
                                    image: AssetImage("carousel/$assetfile"),
                                    width: MediaQuery.of(context).size.width/2,
                                    height: MediaQuery.of(context).size.height/3,
                                    fit: BoxFit.contain
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                footer(MediaQuery.of(context).orientation==Orientation.landscape),
                        ],
                      ),
              ),
            )));
    }
    else {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: getTopBar(context),
        drawer: getDrawer(context),
        extendBodyBehindAppBar: true,
        body: Center(
            child: RawScrollbar(
              thumbColor: Color(0xFF313133),
              thickness: 10,
              thumbVisibility: true,
              trackVisibility: true,
              controller: scroller,
              child: SingleChildScrollView(
                controller: scroller,
                child: Column(
                        children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("carousel/image_18.jpg"),
                          fit: BoxFit.fitHeight,
                          opacity: 0.4)),
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Color(0x55000000)
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset("gwhmun_logo.png",
                              height: MediaQuery.of(context).size.height*0.3,),
                            ),
                            Text(
                              "Greenwood High Model United Nations 2023",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: font,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Text(
                                "25-27 AUGUST 2023",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: font,
                                    fontSize: 28),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            /*TextButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(textcolor),
                                backgroundColor: MaterialStatePropertyAll<Color>(
                                    Colors.transparent),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(50, 20, 50, 20),
                                child: Text(
                                  "Registrations Open Now",
                                  style: TextStyle(
                                    color: textcolor,
                                    fontFamily: font,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/registrations");
                              },
                              onHover: (value) {
                                if (value) {
                                  setState(() {
                                    textcolor = Colors.green;
                                  });
                                } else {
                                  setState(() {
                                    textcolor = Colors.white;
                                  });
                                }
                              },
                            ),
                            */
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "The conference starts in:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: font,
                                    fontSize: 20),
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
                                              color: accentColor,
                                              fontFamily: fontTime,
                                              fontSize: 40),
                                        ),
                                      ),
                                      Text("Days",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: font,
                                              fontSize: 20))
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
                                              color: accentColor,
                                              fontFamily: fontTime,
                                              fontSize: 40),
                                        ),
                                      ),
                                      Text("Hours",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: font,
                                              fontSize: 20))
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
                                              color: accentColor,
                                              fontFamily: fontTime,
                                              fontSize: 40),
                                        ),
                                      ),
                                      Text("Minutes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: font,
                                              fontSize: 20))
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
                                              color: accentColor,
                                              fontFamily: fontTime,
                                              fontSize: 40),
                                        ),
                                      ),
                                      Text("Seconds",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: font,
                                              fontSize: 20))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 40, 39, 39),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Letter from the Secretary General",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: font,
                          fontSize: 30
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image: AssetImage("ocs/vanshHome.png"), width: MediaQuery.of(context).size.width * 0.7),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Text(
                                  "Dear Delegates,\n\nIt is with great pleasure and honor that I welcome you to the Greenwood High Model United Nations conference. As the Secretary-General, I am grateful for the opportunity to witness the passion and intellectual prowess of each one of you.\n\nAs someone who has been a part of the MUN circuit since 2018, I can truly say that, participating in a Model United Nations (MUN) conference offers a transformative journey of diplomacy and knowledge. MUN fosters empathetic collaboration to address global challenges, shaping future leaders with humility and strategic acumen. Throughout this conference, we look forward to have the unique chance to engage in thought-provoking debates, innovative problem-solving, and collaborative decision-making. It is our collective duty to forget our personal beliefs, opinions, and prejudices and collectively work towards finding sustainable and peaceful solutions for the challenges that lie ahead.\n\nAs we embark on this journey together, let us remember the words of Kofi Annan, \"More than ever before in human history, we share a common destiny. We can master it only if we face it together. And that, my friends, is why we have the United Nations.\"\n\nOnce again, welcome to the Model United Nations conference. I am excited to witness the incredible achievements we will attain throughout this enlightening journey.\n\nSincerely yours,\nVansh Abrol, Secretary General",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: font,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                        child: Divider(
                          color: Colors.white,
                          height: 1,
                          thickness: 1
                        )
                      ),
                      Text(
                        "Letter from the Director General",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: font,
                          fontSize: 30
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image: AssetImage("ocs/rahulHome.png"), width: MediaQuery.of(context).size.width * 0.7),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Text(
                                  "Dear Delegates,\n\nThe stage is set. The curtains are pulling aside to reveal the main act: GWHMUN '23. As the Director General of this diplomatic conference, I extend a welcome to each of you.\n\nThe world outside resounds with challenges that mirror the uncertainty of fate. The threat of climate change threatens to drown us in its waters, while the clash of conflict resonates, leaving scars on the skin of civilization. Yet, amid the hardships, we find hope. For it is in the artistry of your diplomacy, the expressiveness of your eloquence, and the dance of your intellect that the world shall witness change.\n\nDelegates, you are not mere spectators in this play. You are the protagonists, the heroes and the heroines (and in some cases villains) of this grand narrative. As the spotlight shines upon each of you, seize the moment to deliver wisdom, engage in diplomacy, and participate in acts of cooperation.\n\nThroughout the days that lie ahead, you shall navigate the corridors of diplomacy and forge alliances and friendships that last a life time. But remember, dear delegates, that every act matters, every word spoken holds weight, and every decision shapes the course of history.\n\nAnd so, let the Green Wood High MUN begin! Dazzle the world with your brilliance, and let the echoes of your achievements reverberate across time and space. Embrace the drama. Embrace the action. For it is in this crucible of passion and intellect that you shall script a tale of unity, compassion, and progress.\n\nSincerely,\nRahul, Director General",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: font,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        )  
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Photo Gallery",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: font,
                            fontSize: 30
                          ),
                          textAlign: TextAlign.center,
                        )
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 400.0,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 2)),
                        items: imageCarousel.map((assetfile) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Padding(
                                padding: const EdgeInsets.all(30),
                                child: Image(
                                    image: AssetImage("carousel/$assetfile"),
                                    width: MediaQuery.of(context).size.width*0.8,
                                    height: MediaQuery.of(context).size.height*0.4,
                                    fit: BoxFit.contain
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                footer(MediaQuery.of(context).orientation==Orientation.landscape),
                        ],
                      ),
              ),
            )));
    }
  }
}
