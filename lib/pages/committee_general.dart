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
  String logoLink;
  List<List<String>> executiveBoard;
  Committee(
      {key,
      required this.title,
      required this.agenda,
      required this.bgLink,
      required this.executiveBoard,
      required this.logoLink})
      : super(key: key);

  @override
  State<Committee> createState() => _CommitteeState();
}

class _CommitteeState extends State<Committee> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  Color buttonColor = Colors.white;
  Color bgColor = Colors.black;
  ScrollController scroll = ScrollController();

  List<Row> generateBoard() {
    List<Row> board = [];
    bool flag = true;
    if(MediaQuery.of(context).orientation==Orientation.landscape){
      for (List<String> member in widget.executiveBoard) {
        if (flag) {
          board.add(Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage(member[2]),
                        width: MediaQuery.of(context).size.width/4,
                      ),
                    ),
                    Text(
                      member[0],
                      style:TextStyle(
                        fontFamily: fontMain,
                        fontSize: 30,
                        color: Colors.white
                      )),
                    Text(
                      member[1],
                      style:TextStyle(
                        fontFamily: fontMain,
                        fontSize: 30,
                        color: Color.fromRGBO(245, 245, 220, 1)
                      )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width*2/5, 
                  child: Text(
                    member[3], 
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
                  member[3], 
                  style: TextStyle(
                    fontFamily: fontMain,
                    color: Colors.white,
                    fontSize: 20
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage(member[2]),
                        width: MediaQuery.of(context).size.width/4,
                      ),
                    ),
                    Text(
                        member[0],
                        style:TextStyle(
                          fontFamily: fontMain,
                          fontSize: 30,
                          color: Colors.white
                        )),
                    Text(
                        member[1],
                        style:TextStyle(
                          fontFamily: fontMain,
                          fontSize: 30,
                          color: Color.fromRGBO(245, 245, 220, 1)
                        )),
                  ],
                ),
              ),
            ],
          ));
          flag = true;
        }
      }
    }
    else{
      for (List<String> member in widget.executiveBoard) {
        board.add(Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage(member[2]),
                        width: MediaQuery.of(context).size.width*0.7,
                      ),
                    ),
                    Text(
                      member[0],
                      style:TextStyle(
                        fontFamily: fontMain,
                        fontSize: 30,
                        color: Colors.white
                      )),
                    Text(
                      member[1],
                      style:TextStyle(
                        fontFamily: fontMain,
                        fontSize: 30,
                        color: Color.fromRGBO(245, 245, 220, 1)
                      )),
                  ],
                ),
              ),],
          )
          );
        board.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              width: MediaQuery.of(context).size.width*0.8, 
              child: Text(
                member[3], 
                style: TextStyle(
                fontFamily: fontMain,
                color: Colors.white,
                fontSize: 20
                )
              ),
              ),
            )
          ],
        ),
        );
      
      }
    }
    return board;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context),
      drawer: getDrawer(context),
        backgroundColor: Colors.black,
        body: Column(
          children: [
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
                          image: AssetImage(widget.logoLink),
                          fit: BoxFit.contain,
                        ),
                      ),
                      height: (MediaQuery.of(context).orientation == Orientation.landscape) ? MediaQuery.of(context).size.height : MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            color: Color(0x99000000)
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.title,
                                style: TextStyle(
                                    color: Colors.white, 
                                    fontSize: (MediaQuery.of(context).orientation==Orientation.landscape)?60:35, 
                                    fontFamily: fontMain),
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  widget.agenda,
                                  style: TextStyle(
                                      color: Colors.white, 
                                      fontSize: (MediaQuery.of(context).orientation==Orientation.landscape)?35:20, 
                                      fontFamily: fontMain),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              widget.bgLink.isNotEmpty ? TextButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(bgColor),
                                      foregroundColor: MaterialStateProperty.all<Color>(buttonColor),
                                      side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Colors.white, width: 1)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                                  ),
                                  onPressed: () {
                                    window.open(
                                        widget.bgLink,
                                        "Background Guide");
                                  },
                                  onHover: (value) {
                                    if (value) {
                                      setState(() {
                                        buttonColor = Colors.green;
                                        bgColor = Color(0xFF313133);
                                      });
                                    } else {
                                      setState(() {
                                        buttonColor = Colors.white;
                                        bgColor = Colors.black;
                                      });
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("Background Guide",
                                        style: TextStyle(
                                            color: buttonColor, fontFamily: fontMain, fontSize: 30)),
                                  )) : Container(),
                            ],
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
                            footer(MediaQuery.of(context).orientation==Orientation.landscape)
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
