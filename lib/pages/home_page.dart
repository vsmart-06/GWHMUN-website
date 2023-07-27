import "package:flutter/material.dart";
import "package:flutter/animation.dart";
import "dart:async";
import "package:google_fonts/google_fonts.dart";
import "package:website/widgets/header.dart";
import "package:website/widgets/footer.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


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
  String? font = GoogleFonts.ebGaramond().fontFamily;
  String? fontTime = GoogleFonts.roboto().fontFamily;
  List<ScrollController>? scrollers = [ScrollController(), ScrollController(), ScrollController(), ScrollController()];
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
    String manifestContent = await rootBundle.loadString('AssetManifest.json');
    Map<String, dynamic> manifest = json.decode(manifestContent);
    List<String> assetFiles = manifest.keys
        .where((String key) => key.contains("assets/carousel"))
        .toList();
    imageCarousel = assetFiles;
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
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: getTopBar(context),
        drawer: getDrawer(context),
        body: Center(
            child: Column(
          children: [
            Expanded(
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: pageScroll,
                physics: PageScrollPhysics(),
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("carousel/image_5.jpg"),
                            fit: BoxFit.fitWidth,
                            opacity: 0.4)),
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          color: Color(0x55000000)
                        ),
                        RawScrollbar(
                          thumbColor: Color(0xFF313133),
                          thickness: 10,
                          thumbVisibility: true,
                          trackVisibility: true,
                          controller: scrollers?[0],
                          child: Center(
                            child: SingleChildScrollView(
                              controller: scrollers?[0],
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Greenwood High Model\nUnited Nations 2023",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: font,
                                          fontSize: 40),
                                      textAlign: TextAlign.center,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                                      child: Text(
                                        "12-15 AUGUST 2023 | BENGALURU, INDIA",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: font,
                                            fontSize: 28),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    TextButton(
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
                                    IconButton(
                                      onPressed: () {pageScroll?.nextPage(duration: Duration(seconds: 1), curve: Curves.easeIn);}, 
                                      icon: Icon(Icons.arrow_downward),
                                      color: Colors.white,
                                      hoverColor: Colors.green,
                                      iconSize: 50,
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  RawScrollbar(
                    thumbColor: Color(0xFF313133),
                    thickness: 10,
                    thumbVisibility: true,
                    trackVisibility: true,
                    controller: scrollers?[1],
                    child: Center(
                      child: SingleChildScrollView(
                        controller: scrollers?[1],
                        child: Container(
                          color: Color.fromARGB(255, 40, 39, 39),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_upward),
                                onPressed: () {pageScroll?.previousPage(duration: Duration(seconds: 1), curve: Curves.easeOut);},
                                iconSize: 50,
                                color: Colors.white,
                                hoverColor: Colors.green,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage("ocs/vansh.png"), width: MediaQuery.of(context).size.width * 0.4),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width * 0.5,
                                        child: Text(
                                          """Dear Delegates,\n\nIt is with great pleasure and honor that I welcome you to the Greenwood High Model United Nations conference. As the Secretary-General, I am grateful for the opportunity to witness the passion and intellectual prowess of each one of you.\n\nParticipating in a Model United Nations (MUN) conference offers a transformative journey of diplomacy and knowledge. MUN fosters empathetic collaboration to address global challenges, shaping future leaders with humility and strategic acumen. Throughout this conference, we look forward to have the unique chance to engage in thought-provoking debates, innovative problem-solving, and collaborative decision-making. It is our collective duty to forget our personal beliefs, opinions, and prejudices and collectively work towards finding sustainable and peaceful solutions for the challenges that lie ahead.\n\nIn my experience, I notice one virtue of MUN not being appreciated enough. The virtue of empathy. Empathy lies at the core of the Model United Nations experience. Cooperation urges delegates to rise above individual ambitions and embrace the collective quest for understanding. From my experience attending MUN's, empathy unites participants in a profound human connection, transcending borders, and identities. As delegates delve into a realm of conflict resolution, empathy becomes a transformative force, unearthing the hidden depths of motives and emotions. Embracing empathy, MUN delegates embark on an intellectual and spiritual journey, peering into the essence of humanity, dissolving the illusion of separation, and weaving a tapestry of diplomatic harmony in a world yearning for understanding and compassion. As the Secretary-General, my pursuit is to instill empathy as the cornerstone of this philosophical symphony, fostering an immersive MUN experience that not only addresses global challenges but also illuminates the path towards enlightened diplomacy and unity.\n\nAs we embark on this journey together, let us remember the words of Kofi Annan, "More than ever before in human history, we share a common destiny. We can master it only if we face it together. And that, my friends, is why we have the United Nations."\n\nI have full faith in your abilities, intellects, and commitment to uphold the principles upon which the United Nations was founded. Together, let us inspire change, collaborate for a better world, and make this conference a resounding success.\n\nOnce again, welcome to the Model United Nations conference. I am excited to witness the incredible achievements we will attain throughout this enlightening journey.\n\nSincerely yours,\nVansh Abrol, Secretary General""",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: font,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: IconButton(
                                  onPressed: () {pageScroll?.nextPage(duration: Duration(seconds: 1), curve: Curves.easeIn);}, 
                                  icon: Icon(Icons.arrow_downward),
                                  color: Colors.white,
                                  hoverColor: Colors.green,
                                  iconSize: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  RawScrollbar(
                    thumbColor: Color(0xFF313133),
                    thickness: 10,
                    thumbVisibility: true,
                    trackVisibility: true,
                    controller: scrollers?[2],
                    child: Center(
                      child: SingleChildScrollView(
                        controller: scrollers?[2],
                        child: Container(
                          color: Color.fromARGB(255, 40, 39, 39),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_upward),
                                onPressed: () {pageScroll?.previousPage(duration: Duration(seconds: 1), curve: Curves.easeOut);},
                                iconSize: 50,
                                color: Colors.white,
                                hoverColor: Colors.green,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width * 0.5,
                                        child: Text(
                                          """Dear Delegates,\n\nIt is with great pleasure and honor that I welcome you to the Greenwood High Model United Nations conference. As the Secretary-General, I am grateful for the opportunity to witness the passion and intellectual prowess of each one of you.\n\nParticipating in a Model United Nations (MUN) conference offers a transformative journey of diplomacy and knowledge. MUN fosters empathetic collaboration to address global challenges, shaping future leaders with humility and strategic acumen. Throughout this conference, we look forward to have the unique chance to engage in thought-provoking debates, innovative problem-solving, and collaborative decision-making. It is our collective duty to forget our personal beliefs, opinions, and prejudices and collectively work towards finding sustainable and peaceful solutions for the challenges that lie ahead.\n\nIn my experience, I notice one virtue of MUN not being appreciated enough. The virtue of empathy. Empathy lies at the core of the Model United Nations experience. Cooperation urges delegates to rise above individual ambitions and embrace the collective quest for understanding. From my experience attending MUN's, empathy unites participants in a profound human connection, transcending borders, and identities. As delegates delve into a realm of conflict resolution, empathy becomes a transformative force, unearthing the hidden depths of motives and emotions. Embracing empathy, MUN delegates embark on an intellectual and spiritual journey, peering into the essence of humanity, dissolving the illusion of separation, and weaving a tapestry of diplomatic harmony in a world yearning for understanding and compassion. As the Secretary-General, my pursuit is to instill empathy as the cornerstone of this philosophical symphony, fostering an immersive MUN experience that not only addresses global challenges but also illuminates the path towards enlightened diplomacy and unity.\n\nAs we embark on this journey together, let us remember the words of Kofi Annan, "More than ever before in human history, we share a common destiny. We can master it only if we face it together. And that, my friends, is why we have the United Nations."\n\nI have full faith in your abilities, intellects, and commitment to uphold the principles upon which the United Nations was founded. Together, let us inspire change, collaborate for a better world, and make this conference a resounding success.\n\nOnce again, welcome to the Model United Nations conference. I am excited to witness the incredible achievements we will attain throughout this enlightening journey.\n\nSincerely yours,\nVansh Abrol, Secretary General""",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: font,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    Image(image: AssetImage("ocs/vansh.png"), width: MediaQuery.of(context).size.width * 0.4),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: IconButton(
                                  onPressed: () {pageScroll?.nextPage(duration: Duration(seconds: 1), curve: Curves.easeIn);}, 
                                  icon: Icon(Icons.arrow_downward),
                                  color: Colors.white,
                                  hoverColor: Colors.green,
                                  iconSize: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  RawScrollbar(
                    thumbColor: Color(0xFF313133),
                    thickness: 10,
                    thumbVisibility: true,
                    trackVisibility: true,
                    controller: scrollers?[3],
                    child: SingleChildScrollView(
                      controller: scrollers?[3],
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: IconButton(
                              icon: Icon(Icons.arrow_upward),
                              onPressed: () {pageScroll?.previousPage(duration: Duration(seconds: 1), curve: Curves.easeOut);},
                              iconSize: 50,
                              color: Colors.white,
                              hoverColor: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CarouselSlider(
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
                                          image: AssetImage(assetfile),
                                          width: MediaQuery.of(context).size.width/2,
                                          height: MediaQuery.of(context).size.height/3,
                                          fit: BoxFit.contain
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                          ),
                          footer(MediaQuery.of(context).orientation==Orientation.landscape),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )));
  }
}
