import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:website/widgets/header.dart";
import "package:website/widgets/footer.dart";
import "package:website/pages/registrations_general.dart";
import "dart:html";

class Registrations extends StatefulWidget {
  @override
  State<Registrations> createState() => _RegistrationsState();
}

class _RegistrationsState extends State<Registrations> {
  String? titleFont = GoogleFonts.ebGaramond().fontFamily;
  List<Color> cardColors = [Colors.black, Colors.black, Colors.black];
  List<Color> linkColors = [Colors.black, Colors.black];
  List<ScrollController> scroll = [ScrollController(), ScrollController()];
  String? clickedLink;
  double? fontSize;
  double? subFontSize;
  late double cardWidth;
  late double cardHeight;
  bool open = true;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      fontSize = 50;
      subFontSize = 30;
      cardWidth = MediaQuery.of(context).size.width/2;
      cardHeight = MediaQuery.of(context).size.height/2;
    }
    else {
      fontSize = 30;
      subFontSize = 15;
      cardWidth = MediaQuery.of(context).size.width/1.5;
      cardHeight = MediaQuery.of(context).size.height/3;
    }
    if (!open) {
      return Scaffold(
        appBar: getTopBar(context),
        drawer: getDrawer(context),
        backgroundColor: Colors.black,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "REGISTRATIONS",
                  style: TextStyle(
                      color: Colors.white, fontSize: 35, fontFamily: titleFont),
                ),
              ),
              Text(
                "Stay tuned! Registrations are opening soon!",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: titleFont,
                  fontSize: 35,
                ),
                textAlign: TextAlign.center
              ),
              //Image(image: AssetImage("carousel/image_2.jpg")),
              (MediaQuery.of(context).orientation == Orientation.landscape) ? Expanded(child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.end, children: [footer(MediaQuery.of(context).orientation==Orientation.landscape)])) : Container(),
            ],
          ),
        ),
      );
    }
    if (clickedLink == null) {
      return Scaffold(
        appBar: getTopBar(context),
        drawer: getDrawer(context),
        backgroundColor: Colors.black,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "REGISTRATIONS",
                  style: TextStyle(
                      color: Colors.white, fontSize: 35, fontFamily: titleFont),
                ),
              ),
              Expanded(
                child: RawScrollbar(
                  thumbColor: Color(0xFF313133),
                  thickness: 10,
                  thumbVisibility: true,
                  trackVisibility: true,
                  controller: scroll[0],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      controller: scroll[0],
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Please register early as the link will be closed as soon as required numbers are reached for each category",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: titleFont,
                                fontSize: 35,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ), 
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: cardWidth,
                              height: cardHeight,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Colors.white
                                  )
                                ),
                                color: cardColors[0],
                                child: TextButton(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Greenwood High Delegates Only",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: titleFont,
                                            fontSize: fontSize,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                         Text(
                                          "Registration dates: 10th to 16th August, 2023",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: titleFont,
                                            fontSize: subFontSize,
                                            fontStyle: FontStyle.italic
                                          ),
                                          textAlign: TextAlign.center,
                                        ), 
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        clickedLink = "Internals";
                                      }
                                    );
                                  },
                                  onHover: (value) {
                                    value ? setState(() {cardColors[0] = Color(0xFF313133);}) : setState(() {cardColors[0] = Colors.black;});
                                  },
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: cardWidth,
                              height: cardHeight,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Colors.white
                                  )
                                ),
                                color: cardColors[1],
                                child: TextButton(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Official School Delegations",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: titleFont,
                                            fontSize: fontSize,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "Registration dates: 10th to 16th August, 2023",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: titleFont,
                                            fontSize: subFontSize,
                                            fontStyle: FontStyle.italic
                                          ),
                                          textAlign: TextAlign.center,
                                        ), 
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        clickedLink = "School Delegation";
                                      }
                                    );
                                  },
                                  onHover: (value) {
                                    value ? setState(() {cardColors[1] = Color(0xFF313133);}) : setState(() {cardColors[1] = Colors.black;});
                                  },
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: cardWidth,
                              height: cardHeight,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Colors.white
                                  )
                                ),
                                color: cardColors[2],
                                child: TextButton(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Non-School Affiliated Delegates",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: titleFont,
                                            fontSize: fontSize,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "Registration link will be provided on the 17th of August, 2023",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: titleFont,
                                            fontSize: subFontSize,
                                            fontStyle: FontStyle.italic
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: null /* () {
                                    setState(
                                      () {
                                        clickedLink = "Externals";
                                      }
                                    );
                                  } */,
                                  onHover: (value) {
                                    value ? setState(() {cardColors[2] = Color(0xFF313133);}) : setState(() {cardColors[2] = Colors.black;});
                                  },
                                )
                              ),
                            ),
                          ),
                          footer(MediaQuery.of(context).orientation==Orientation.landscape),
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
    else {
      return Scaffold(
        appBar: getTopBar(context),
        drawer: getDrawer(context),
        backgroundColor: Colors.black,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "REGISTRATIONS",
                  style: TextStyle(
                      color: Colors.white, fontSize: 35, fontFamily: titleFont),
                ),
              ),
              Expanded(
                child: RawScrollbar(
                  thumbColor: Color(0xFF313133),
                  thickness: 10,
                  thumbVisibility: true,
                  trackVisibility: true,
                  controller: scroll[1],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      controller: scroll[1],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: cardWidth,
                              height: cardHeight,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Colors.white
                                  )
                                ),
                                color: linkColors[0],
                                child: TextButton(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "Net Banking",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: titleFont,
                                        fontSize: fontSize,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (clickedLink == "Internals") {window.open("https://paytm.me/gw-fjKj", "Net Banking Internals");}
                                    else if (clickedLink == "Externals") {window.open("https://paytm.me/6s-r4ed", "Net Banking Externals");}
                                    else if (clickedLink == "School Delegation") {window.open("https://paytm.me/iH1-Vhw", "Net Banking School Delegation");}
                                  },
                                  onHover: (value) {
                                    value ? setState(() {linkColors[0] = Color(0xFF313133);}) : setState(() {linkColors[0] = Colors.black;});
                                  },
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: cardWidth,
                              height: cardHeight,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Colors.white
                                  )
                                ),
                                color: linkColors[1],
                                child: TextButton(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "CC/DC/UPI/Wallet",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: titleFont,
                                        fontSize: fontSize,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (clickedLink == "Internals") {window.open("https://paytm.me/I-f3wHu", "Wallet Internals");}
                                    else if (clickedLink == "Externals") {window.open("https://paytm.me/Fsj-GlT", "Wallet Externals");}
                                    else if (clickedLink == "School Delegation") {window.open("https://paytm.me/fX-192m", "Wallet School Delegation");}
                                  },
                                  onHover: (value) {
                                    value ? setState(() {linkColors[1] = Color(0xFF313133);}) : setState(() {linkColors[1] = Colors.black;});
                                  },
                                )
                              ),
                            ),
                          ),
                          footer(MediaQuery.of(context).orientation==Orientation.landscape),
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
      //return FormPage(link: clickedLink!);
    }
  }
}
