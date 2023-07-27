import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:website/widgets/header.dart";
import "package:website/widgets/footer.dart";
import "package:website/pages/registrations_general.dart";

class Registrations extends StatefulWidget {
  @override
  State<Registrations> createState() => _RegistrationsState();
}

class _RegistrationsState extends State<Registrations> {
  String? titleFont = GoogleFonts.ebGaramond().fontFamily;
  List<Color> cardColors = [Colors.black, Colors.black, Colors.black];
  ScrollController scroll = ScrollController();
  String? clickedLink;
  double fontSize = 50;
  late double cardWidth;

  @override
  Widget build(BuildContext context) {
    cardWidth = MediaQuery.of(context).size.width/4;
    if (clickedLink == null) {
      return Scaffold(
        appBar: getTopBar(context),
        drawer: getDrawer(context),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Registrations",
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
                                    child: Text(
                                      "Internals",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: titleFont,
                                        fontSize: fontSize,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        clickedLink = "https://forms.gle/NgbqfwUfYFatWRCfA";
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
                                    child: Text(
                                      "Externals",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: titleFont,
                                        fontSize: fontSize,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        clickedLink = "https://forms.gle/9q4M4pGnKbTGWcbp6";
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
                                    child: Text(
                                      "Delegation",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: titleFont,
                                        fontSize: fontSize,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        clickedLink = "https://forms.gle/kVFvQY3TycQzTE4e6";
                                      }
                                    );
                                  },
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
      return FormPage(link: clickedLink!);
    }
  }
}
