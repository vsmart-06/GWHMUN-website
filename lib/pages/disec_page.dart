import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "dart:html";

class DISEC extends StatefulWidget {
  DISEC({super.key});

  @override
  State<DISEC> createState() => _DISECState();
}

class _DISECState extends State<DISEC> {
  String? fontMain = GoogleFonts.playfairDisplay().fontFamily;

  String? font = GoogleFonts.roboto().fontFamily;

  ScrollController scroll = ScrollController();

  Color buttonColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 80,
              child: DrawerHeader(
                child: Text(
                  "GWHJMUN 2023",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.playfairDisplay().fontFamily,
                    fontSize: 30
                  ),
                )
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/");
              },
            ),
            ListTile(
              title: Text(
                "Committees",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/committees");
              },
            ),
            ListTile(
              title: Text(
                "Resources",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/resources");
              },
            ),
            ListTile(
              title: Text(
                "Secretariat",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/secretariat");
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
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
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    "The Disarmament and International \nSecurity Committee",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain,
                      fontSize: 50
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 30, 80, 30),
                  child: Text(
                    "Agenda: Discussing the regulations for denuclearization of the Middle East.",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain,
                      fontSize: 30
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white)
                      )
                    )
                  ),
                  onPressed: () {
                    window.open("https://drive.google.com/file/d/1jG442BQskB8PictmgwO6T9pjIIkbo30F/view?usp=sharing", "Background Guide");
                  }, 
                  onHover: (value) {
                    if (value) {
                      setState(() {
                        buttonColor = Color(0x99313133);
                      });
                    }
                    else {
                      setState(() {
                        buttonColor = Colors.black;
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Background Guide",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: fontMain,
                        fontSize: 20
                      )
                    ),
                  )
                ),
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
                    color: Colors.white,
                    fontFamily: fontMain,
                    fontSize: 40
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096774026506018866/image.png?width=542&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                "Hey there! I am Arsh. I am a dedicated and passionate MUNer, having started in 6th grade and participated in 10 conferences, and have placed in more than half of the conferences they have attended. In addition to MUN, the writer has a love for football clubs such as FC Barcelona, Arsenal, PSG, and the Argentinian National Football team (You can guess, I am huge Messi fan). I also enjoy playing sports like hockey in PE and also am interested in music, film, and Star Wars. Furthermore, I LOVE history and international relations and hence my passion for MUN. ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*2/5,
                              child: Text(
                                "Since his first MSPMUN in 6th grade, Anirudh has always been a passionate MUNner and enjoys debating with people over a plethora of topics. From debating on more mature topics such as the legality of the legalization of drugs in around half of the US and discussing whether or not Russia's concerns of NATO encroaching its borders are valid to arguing about very immature stuff like how the shape of SpongeBob's shape doesn't change though he's a sponge and how it isn't physically possible for light to come from Chhota Bheem's body after eating a laddoo, Anirudh can happily talk about anything for hours on end. This has helped him gain all sorts of placements in the 10+ MUNs he has attended. \n\nOutside of MUNs, he is a passionate aerospace enthusiast and can be seen reading many aerospace companies' newsletters or flying a plane simulator at any time. He also loves to play all 3 types of the guitar, listen to music, and is an avid reader of books. ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096774070818836530/image.png?width=706&height=834"),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096774175047303178/image.png?width=606&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                "From a young age, Soham Dhar has always been interested in and passionate about international relations and foreign affairs. While not the most experienced delegate, MUNs are important to him and hold a special place in his heart. He is a passionate speaker and enjoys the challenge of dealing with issues of vastly differing fields. He effortlessly transitions from eagerly defending his country's record on fossil fuels to falling to his knees in a dramatic bid for sympathy on the issue of its sovereignty. Out of formal debate, Soham has an easy-going personality and is comfortable with talking to all sorts of delegates. One moment he accuses your country of having an agenda to sabotage his country and portrays you as a backstabber. In the other, he cordially negotiates with you and drives a hard bargain. In the end, you both get what you want and leave committee satisfied-while sharing a good joke or two. \n\nOut of committee, he loves learning. His interests are in very diverse fields which range from history and contemporary politics to mathematics and physics. He is an avid follower of sports, enjoys listening to music and likes watching a TV show every now and then. ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                "Having the biggest switch from hating MUNs with his life to not being able to contain himself for the next, Sunay knows how much a first MUN affects one's perspective. Having had his first MUN online, a redundant overpopulated chaos only leading to headaches, it was at GWHMUN'22 that his MUN journey took a turn as a diplomatic power-delegate. He loves interacting with people and getting to know their perspectives on the agenda only to gaslight them into believing what he thinks should be done. From representing Syria in the Council on Status of Women, Russia in IMF to North Korea in Security council and the drug capitol of Myanmar in UNODC, Sunay has had his fair share of challenges to place in 4 out of his 5 MUNs. \n\nWith all his heart, Sunay looks forward to getting you addicted to MUNs, their hospitable yet brutal environment, taking over the committee with your thoughts yet intently listening to others' (only to prove them wrong) and at the end of the day; going back home with your head held high and a trophy by your side. Apart from straining his voice in committees, Sunay loves to engage himself in experimental and pure sciences, math and over dramatizing any situation at hand.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096774122945654844/image.png?width=578&height=834"),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096774216310853712/image.png?width=606&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                "Having been introduced into the circuit in 2019, Varun is an avid MUNer and crisis delegate and has already begun making a name for himself in the circuit. After being part of more than 10 MUN conferences to date, Varun cherishes debate, being able to give a firm stance on topics ranging from the breakup of the USSR to the operations of the Chicago Outfit. When he isn't busy meticulously planning his directives, Varun spends his time mastering the art of procrastination, writing and playing video games -  while attempting to be an economics enthusiast.  ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      )
    );
  }
}