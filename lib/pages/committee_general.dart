// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:website/widgets/header.dart";
import "package:website/widgets/footer.dart";
import "package:google_fonts/google_fonts.dart";
import "dart:html";

class Committee extends StatefulWidget {
  String title;
  String agenda;
  String bgLink;
  List<List<String>> executiveBoard;
  Committee(
      {key,
      required this.title,
      required this.agenda,
      required this.bgLink,
      required this.executiveBoard})
      : super(key: key);

  @override
  State<Committee> createState() => _CommitteeState();
}

class _CommitteeState extends State<Committee> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  Color buttonColor = Colors.transparent;
  ScrollController scroll = ScrollController();

  List<Row> generateBoard() {
    List<Row> board = [];
    bool flag = true;
    for (List<String> member in widget.executiveBoard) {
      if (flag) {
        board.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: NetworkImage(member[0]),
                    width: MediaQuery.of(context).size.width/4,
                  ),
                ),
                Text("ARSH PAUL\nHEAD CHAIR")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*2/5, 
                child: Text(
                  member[1], 
                  style: TextStyle(
                    fontFamily: fontMain,
                    color: Colors.white,
                    fontSize: 20
                  )
                ),
              ),
            )
          ],
        ));
        flag = false;
      }
      else {
        board.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width*2/5,
              child: Text(
                member[1], 
                style: TextStyle(
                  fontFamily: fontMain,
                  color: Colors.white,
                  fontSize: 20
                )
              )
            ),
            Image(
              image: NetworkImage(member[0]),
              width: MediaQuery.of(context).size.width/4,
            ),
          ],
        ));
        flag = true;
      }
    }
    return board;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
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
                        children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("AIPPM_copy.png"),
                          fit: BoxFit.contain,
                          opacity: 0.35
                        ),
                      ),
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                                color: Colors.white, fontSize: 70, fontFamily: fontMain),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              widget.agenda,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 50, fontFamily: fontMain),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              ),
                              onPressed: () {
                                window.open(
                                    widget.bgLink,
                                    "Background Guide");
                              },
                              onHover: (value) {
                                if (value) {
                                  setState(() {
                                    buttonColor = Color(0x99313133);
                                  });
                                } else {
                                  setState(() {
                                    buttonColor = Colors.transparent;
                                  });
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("Background Guide",
                                    style: TextStyle(
                                        color: Colors.white, fontFamily: fontMain, fontSize: 40)),
                              )),
                          const Padding(
                            padding: EdgeInsets.all(30.0),
                            
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 40, 39, 39),
                      child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "The Executive Board",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40, fontFamily: fontMain),
                              ),
                            ),
                            Column(
                              children: generateBoard(),
                            ),
                            Footer()
                          ],
                        ),
                    ),
                        ],
                      ),
                ),
              ),
            ),
          ],
        ),
        );
  }
}
