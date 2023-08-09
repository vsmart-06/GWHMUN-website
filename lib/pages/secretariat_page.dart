import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:website/widgets/header.dart";
import "package:website/widgets/footer.dart";

class Secretariat extends StatelessWidget {
  Secretariat({super.key});

  final String? titleFont = GoogleFonts.ebGaramond().fontFamily;
  final String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  final ScrollController scroll = ScrollController();
  
  Container Person(String imagelink, String name, double sizeImg, double fontSize, double width){
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
                            Column(
                              children: [
                                Person("assets/ocs/vansh.png", "Vansh Abrol", 1/3, 35, width),
                                Text(
                                  "Secretary General", 
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 211, 157),
                                    fontSize: 30,
                                    fontFamily: fontMain),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Person("assets/ocs/rahul.png", "Rahul Prabhu", 1/3, 35, width),
                                Text(
                                  "Director General", 
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 211, 157),
                                    fontSize: 30,
                                    fontFamily: fontMain
                                    ),
                                ),
                              ],
                            ),
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
                      Padding(
                        padding: const EdgeInsets.only(top:20),
                        child: Text(
                          "TECH TEAM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/vishnu.png", "Srivishnu Vusirikala", 1/4, 30, width),
                            Person("assets/ocs/asheera.png", "Asheera Kaul", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "DESIGN TEAM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/ananya.png", "Ananya Mehrotra", 1/4, 30, width),
                            Person("assets/ocs/lalitha.png", "Lalitha Rao", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/sanvi.png", "Sanvi Dange", 1/4, 30, width),
                            Person("assets/ocs/soham.png", "Soham Vasta", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
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
                                    child:
                                    Person("assets/ocs/adyaa.png", "Adyaa Mishra", 1/4, 30, width),
                                  ),
                                ],
                              ),
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
                                    Person("assets/ocs/kaavya.png", "Kaavya Dasgupta", 1/4, 30, width),
                                  ),
                                ],
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
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
                                  Person("assets/ocs/pavan.png", "Pavan Nandhakumar", 1/4, 30, width),
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
                                Person("assets/ocs/ananya.png", "Ananya Mehrotra", 1/4, 30, width),
                              ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
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
                                  Person("assets/ocs/ishaan.png", "Ishan Wanchoo", 1/4, 30, width),
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
                                Person("assets/ocs/neve.png", "Neve Bangalore ", 1/4, 30, width),
                              ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
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
                                  Person("assets/ocs/allen.png", "Allen Goveas", 1/4, 30, width),
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
                                Person("assets/ocs/kriti.png", "Kriti Farswal", 1/4, 30, width),
                              ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "REGISTRATIONS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/yuthika.png", "Yuthika Goel", 1/4, 30, width),
                            Person("assets/ocs/surya.png", "Surya Sivakumar ", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20),
                        child: Text(
                          "COMMUNICATION",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Person("assets/ocs/puja.png", "Puja Shirguppi", 1/4, 30, width),
                            Person("assets/ocs/adit.png", "Adit Mohan Bakshi ", 1/4, 30, width),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Row(
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
                                  Person("assets/ocs/rishab.png", "Rishabh Kumar", 1/4, 30, width),
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
                                Person("assets/ocs/ash.png", "Ash Nair", 1/4, 30, width),
                              ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      footer(MediaQuery.of(context).orientation == Orientation.landscape)
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
                      Person("assets/ocs/vansh.png", "Vansh Abrol", 0.8, 32, width),
                      Text(
                        "Secretary General", 
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 211, 157),
                          fontFamily: fontMain,
                          fontSize: 25),
                      ),
                      Person("assets/ocs/rahul.png", "Rahul Prabhu", 0.8, 32, width),
                      Text(
                        "Director General", 
                        style: TextStyle(
                          color:Color.fromARGB(255, 255, 211, 157),
                          fontFamily: fontMain,
                          fontSize: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "ORGANIZING COMMITTEE OCS",
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
                      Person("assets/ocs/vishnu.png", "Srivishnu Vusirikala", size, fontsize, width),
                      Person("assets/ocs/asheera.png", "Asheera Kaul", size, fontsize, width),
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
                      Person("assets/ocs/ananya.png", "Ananya Mehrotra", size, fontsize, width),
                      Person("assets/ocs/lalitha.png", "Lalitha Rao", size, fontsize, width),
                      Person("assets/ocs/sanvi.png", "Sanvi Dange", size, fontsize, width),
                      Person("assets/ocs/soham.png", "Soham Vasta", size, fontsize, width),
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
                      Person("assets/ocs/adyaa.png", "Adyaa Mishra", size, fontsize, width),
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
                      Person("assets/ocs/pavan.png", "Pavan Nandhakumar", size, fontsize, width),
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
                      Person("assets/ocs/ananya.png", "Ananya Mehrotra", size, fontsize, width),
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
                      Person("assets/ocs/ishaan.png", "Ishan Wanchoo", size, fontsize, width),
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
                      Person("assets/ocs/neve.png", "Neve Bangalore ", size, fontsize, width),
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
                      Person("assets/ocs/allen.png", "Allen Goveas", size, fontsize, width),
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
                      Person("assets/ocs/kriti.png", "Kriti Farswal", size, fontsize, width),
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
                      Person("assets/ocs/surya.png", "Surya Sivakumar ", size, fontsize, width),
                      Person("assets/ocs/yuthika.png", "Yuthika Goel", size, fontsize, width),
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
                      Person("assets/ocs/puja.png", "Puja Shirguppi", size, fontsize, width),
                      Person("assets/ocs/adit.png", "Adit Mohan Bakshi ", size, fontsize, width),
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
                      Person("assets/ocs/rishab.png", "Rishabh Kumar", size, fontsize, width),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: 
                        Text(
                          "ACADEMICS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontFamily: titleFont
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child:
                        Person("assets/ocs/ash.png", "Ash Nair", size, fontsize, width),
                      ),
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
                      Person("assets/ocs/kaavya.png", "Kaavya Dasgupta", size, fontsize, width),
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
