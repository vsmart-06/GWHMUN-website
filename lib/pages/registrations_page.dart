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
  Color paymentColor = Colors.black;
  ScrollController scroll = ScrollController();
  String? clickedLink;
  double? fontSize;
  double? subFontSize;
  bool betweenPage = false;
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
      fontSize = 25;
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
                  controller: scroll,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      controller: scroll,
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
                                fontSize: fontSize,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Non-School Affiliated Delegatesl fees is Rs.1900",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: titleFont,
                                fontSize: subFontSize,
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
                                          "Registration link will be provided on the 19th of August, 2023 at 10 am",
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
                                        scroll.jumpTo(0);
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
                                          "Registrations are closed due to overwhelming response!", //"Registration dates: 10th to 16th August, 2023"
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
                                        clickedLink = "Internals";
                                        scroll.jumpTo(0);
                                      }
                                    );
                                  } */,
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
                                          "Registrations are closed due to overwhelming response!",
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
                                  onPressed: null/*() {
                                    setState(
                                      () {
                                        betweenPage = true;
                                        clickedLink = "School Delegation";
                                        scroll.jumpTo(0);
                                      }
                                    );
                                  },
                                  onHover: (value) {
                                    value ? setState(() {cardColors[1] = Color(0xFF313133);}) : setState(() {cardColors[1] = Colors.black;});
                                  },*/
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
    else if (betweenPage) {
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
                  controller: scroll,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      controller: scroll,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Please note that the last date to register as a school delegation is the 16th August 2023. By this date a delegate information sheet, stating the delegates' names, committee and country preferences, and MUN experience along with a screenshot of all payments made should be emailed by the MUN Coordinator or Student Head to: gwhmun@greenwoodhigh.edu.in.\n\nFurthermore, the minimum number of delegates needed to form a school delegation is 5 and the delegation number cannot exceed 20.\n\nIf a student's name does not feature in the official delegate list sent by the School, such students cannot register as school or individual delegates. Despite that if they register, they will not be refunded. This is to encourage only school chosen delegation on various parameters.\n\nPlease note that due to overwhelming interest shown by different schools and individual registration enthusiasts from non participating schools, we will be closing the registrations before the deadline on a first come first serve basis to prevent overcrowding. Therefore, we request your delegates to register ASAP.\n\nIf the institution does not send an official delegation, only then the students of that particular institution will be allowed to register individually from 17th to 19th August on the website. This is to encourage students from Schools which may not have a delegation.",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: titleFont,
                                fontSize: subFontSize,
                                fontStyle: FontStyle.italic
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Colors.white
                                  )
                                ),
                                color: paymentColor,
                                child: TextButton(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "Proceed To Payment",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: titleFont,
                                        fontSize: subFontSize,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      betweenPage = false;
                                      scroll.jumpTo(0);
                                    });
                                  },
                                  onHover: (value) {
                                    value ? setState(() {paymentColor = Color(0xFF313133);}) : setState(() {paymentColor = Colors.black;});
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
                  controller: scroll,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      controller: scroll,
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
