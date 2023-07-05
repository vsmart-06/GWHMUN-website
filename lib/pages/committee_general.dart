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
  String? fontMain = GoogleFonts.questrial().fontFamily;
  Color buttonColor = Colors.black;

  List<Row> generateBoard() {
    List<Row> board = [];
    bool flag = true;
    for (List<String> member in widget.executiveBoard) {
      if (flag) {
        board.add(Row(
          children: [
            Image(
              image: NetworkImage(member[0]),
              width: MediaQuery.of(context).size.width/4,
            ),
            Container(
              width: MediaQuery.of(context).size.width*2/5, 
              child: Text(
                member[1], 
                style: TextStyle(
                  fontFamily: fontMain,
                  color: Colors.white,
                  fontSize: 20
                )
              ),
            )
          ],
        ));
        flag = false;
      }
      else {
        board.add(Row(
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
        body: SingleChildScrollView(
          child: Column(
              children: [
          Header(),
          Text(
            widget.title,
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontFamily: fontMain),
          ),
          Text(
            widget.agenda,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontFamily: fontMain),
          ),
          TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)))),
              onPressed: () {
                window.open(
                    "https://drive.google.com/file/d/17oPHpOSReUXiHYemkyCZ6J1-FpJepnxP/view?usp=sharing",
                    "Background Guide");
              },
              onHover: (value) {
                if (value) {
                  setState(() {
                    buttonColor = Color(0x99313133);
                  });
                } else {
                  setState(() {
                    buttonColor = Colors.black;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Background Guide",
                    style: TextStyle(
                        color: Colors.white, fontFamily: fontMain, fontSize: 20)),
              )),
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
                color: Colors.white, fontSize: 40, fontFamily: fontMain),
          ),
          Column(
            children: generateBoard(),
          ),
          Footer()
              ],
            ),
        ));
  }
}
