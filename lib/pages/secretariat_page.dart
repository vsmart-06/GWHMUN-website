import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:website/widgets/header.dart";

class Secretariat extends StatelessWidget {
  Secretariat({super.key});

  final String? titleFont = GoogleFonts.ebGaramond().fontFamily;
  final String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  final ScrollController scroll = ScrollController();
  
  Container Person(String imagelink, String name, String title, double sizeImg, double fontSize, double width){
    return Container(
      width: width*sizeImg,
      child: Column(
        children:[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image(
            image: NetworkImage(imagelink),
            width: width*sizeImg,
          ),
        ),
        Text(
          name,
          style:TextStyle(
            fontFamily: fontMain,
            fontSize: fontSize,
            color: Color.fromARGB(255,103, 200, 171)
          )
        ),
        Text(
          title,
          style:TextStyle(
            fontFamily: fontMain,
            fontSize: fontSize-5,
            color: Color.fromARGB(255, 213, 197, 158)
          )
        ),
        ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if(MediaQuery.of(context).orientation==Orientation.landscape){
      return Scaffold(
        drawer: getDrawer(context),
        appBar: getTopBar(context),
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
                      Text(
                        "SECRETARIAT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: titleFont
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/nopicgiven.png", "Vansh Abrol", "Secretary General", 1/3, 35, width),
                            Person("assets/ocs/nopicgiven.png", "Rahul Prabhu", "Director General", 1/3, 35, width),
                          ],
                        ),
                      ),
                      Text(
                        "ORGANIZING COMMITTEE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: titleFont
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "TECH TEAM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontFamily: titleFont
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/vishnu.png", "Vishnu Vusirikala", "USG", 1/4, 30, width),
                            Person("assets/ocs/asheera.png", "Asheera Kaul", "USG", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/nopicgiven.png", "Arushi Goel", "", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Text(
                        "DESIGN TEAM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontFamily: titleFont
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/ananya.png", "Ananya Mehrotra", "USG", 1/4, 30, width),
                            Person("assets/ocs/lalitha.png", "Lalitha Rao", "USG", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/sanvi.png", "Sanvi Dange", "USG", 1/4, 30, width),
                            Person("assets/ocs/nopicgiven.png", "Soham Vasta", "USG", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Text(
                        "LOGISTICS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontFamily: titleFont
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/adyaa.png", "Adyaa Mishra", "USG", 1/4, 30, width),
                            Person("assets/ocs/nopicgiven.png", "ISC", "USG", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "SECURITY",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontFamily: titleFont
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child:
                                Person("assets/ocs/pavan.png", "Pavan Nandhakumar", "USG", 1/4, 30, width),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                            Text(
                              "MARKETING",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: titleFont
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child:
                              Person("assets/ocs/ananya.png", "Ananya Mehrotra", "USG", 1/4, 30, width),
                            ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "VIDEOS",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontFamily: titleFont
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child:
                                Person("assets/ocs/ishaan.png", "Ishan Wanchoo", "USG", 1/4, 30, width),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                            Text(
                              "PHOTOGRAPHY",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: titleFont
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child:
                              Person("assets/ocs/neve.png", "Neve Bangalore ", "USG", 1/4, 30, width),
                            ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "FINANCE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontFamily: titleFont
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child:
                                Person("assets/ocs/nopicgiven.png", "Allen Goveas", "USG", 1/4, 30, width),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                            Text(
                              "EVENTS",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: titleFont
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child:
                              Person("assets/ocs/kriti.png", "Kriti farswal", "USG", 1/4, 30, width),
                            ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        "REGISTRATIONS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontFamily: titleFont
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/nopicgiven.png", "Yuthika Goel", "USG", 1/4, 30, width),
                            Person("assets/ocs/surya.png", "Surya Sivakumar ", "USG", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Text(
                        "COMMUNICATION",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontFamily: titleFont
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/nopicgiven.png", "Puja Shirguppi", "USG", 1/4, 30, width),
                            Person("assets/ocs/adit.png", "Adit Mohan Bakshi ", "USG", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "DELEGATE AFFAIRS",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontFamily: titleFont
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child:
                                Person("assets/ocs/rishab.png", "Rishabh Kumar", "USG", 1/4, 30, width),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                            Text(
                              "ACADEMICS",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: titleFont
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child:
                              Person("assets/ocs/ash.png", "Aashir Nair", "USG", 1/4, 30, width),
                            ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "RESOURCES",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontFamily: titleFont
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child:
                                Person("assets/ocs/kaavya.png", "Kaavya Dasgupta", "USG", 1/4, 30, width),
                              ),
                            ],
                          ),
                          /*Column(
                            children: [
                            Text(
                              "Academics",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: titleFont
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child:
                              Person("assets/ocs/ash.png", "Aashir Nair", "USG", 1/4, 30, width),
                            ),
                            ],
                          ),*/
                        ],
                      ),
                      
                      ],
                  )
                ),
              ),
            ),
          ],
        ),
      );
    }
    else{
      double size=0.6;
      double fontsize=28;
      return Scaffold(
        drawer: getDrawer(context),
        appBar: getTopBar(context),
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
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "SECRETARIAT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Person("assets/ocs/nopicgiven.png", "Vansh Abrol", "Secretary General", 0.7, 32, width),
                      Person("assets/ocs/nopicgiven.png", "Rahul Prabhu", "Director General", 0.7, 32, width),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "ORGANIZING COMMITTEE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "TECH TEAM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Person("assets/ocs/vishnu.png", "Vishnu Vusirikala", "USG", size, fontsize, width),
                      Person("assets/ocs/asheera.png", "Asheera Kaul", "USG", size, fontsize, width),
                      Person("assets/ocs/nopicgiven.png", "Arushi Goel", "", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "DESIGN TEAM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Person("assets/ocs/ananya.png", "Ananya Mehrotra", "USG", size, fontsize, width),
                      Person("assets/ocs/lalitha.png", "Lalitha Rao", "USG", size, fontsize, width),
                      Person("assets/ocs/sanvi.png", "Sanvi Dange", "USG", size, fontsize, width),
                      Person("assets/ocs/nopicgiven.png", "Soham Vasta", "USG", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "LOGISTICS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Person("assets/ocs/adyaa.png", "Adyaa Mishra", "USG", size, fontsize, width),
                      Person("assets/ocs/nopicgiven.png", "ISC", "USG", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "SECURITY",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Person("assets/ocs/pavan.png", "Pavan Nandhakumar", "USG", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                        "MARKETING",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: titleFont
                        ),
                        textAlign: TextAlign.center,
                                          ),
                      ),
                      Person("assets/ocs/ananya.png", "Ananya Mehrotra", "USG", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "VIDEOS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Person("assets/ocs/ishaan.png", "Ishan Wanchoo", "USG", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "PHOTOGRAPHY",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Person("assets/ocs/neve.png", "Neve Bangalore ", "USG", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                                  "FINANCE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontFamily: titleFont
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                      ),
                      Person("assets/ocs/nopicgiven.png", "Allen Goveas", "USG", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                                "EVENTS",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontFamily: titleFont
                                ),
                                textAlign: TextAlign.center,
                              ),
                      ),
                      Person("assets/ocs/kriti.png", "Kriti farswal", "USG", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "REGISTRATIONS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Person("assets/ocs/nopicgiven.png", "Yuthika Goel", "USG", size, fontsize, width),
                      Person("assets/ocs/surya.png", "Surya Sivakumar ", "USG", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "COMMUNICATION",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Person("assets/ocs/nopicgiven.png", "Puja Shirguppi", "USG", size, fontsize, width),
                      Person("assets/ocs/adit.png", "Adit Mohan Bakshi ", "USG", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "DELEGATE AFFAIRS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Person("assets/ocs/rishab.png", "Rishabh Kumar", "USG", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "RESOURCES",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Person("assets/ocs/kaavya.png", "Kaavya Dasgupta", "USG", size, fontsize, width),
                      Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 80))
                    ]
                  )
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
