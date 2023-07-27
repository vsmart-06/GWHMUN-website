import "package:flutter/material.dart";
import 'committee_general.dart';

class SOCHUM extends StatefulWidget {
  SOCHUM({super.key});

  @override
  State<SOCHUM> createState() => _SOCHUMState();
}

class _SOCHUMState extends State<SOCHUM> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "Social, Humanitarian and \nCultural Committee (SOCHUM)",
      agenda: "Agenda: Discussing the rising problem of human trafficking in south-east asia",
      logoLink: "committee_page/SOCHUM.png",
      bgLink: "https://drive.google.com/file/d/1jG442BQskB8PictmgwO6T9pjIIkbo30F/view?usp=sharing",
      executiveBoard: [["Arsh Paul","Head chair","EB/SOCHUM1.png","Arsh Paul, the headchair of SOCHUM jr, started MUNing all the way back in 6th grade. From the moment he stepped foot into the Jr MUNs of GWH, he knew he was in love with diplomacy, international relations, and MUN itself. He has seen both the Online and offline versions of MUNs across the Bangalore circuit and across committees from the UNHRCs to full blown crisis committees. A short yet annoyingly loud person, he makes his point heard. Arsh has a great understanding of historical events and won\’t stop trying to connect current events to past historical events, until it gets incredibly annoying.In the committee itself, he hopes to inspire the delegates to do future MUNs and will try to make the committee an exciting experience for newcomers and experienced delegates alike and will not stop challenging the Delegates to bring out their best in committee. "],
      ["Ash Nair","Vice chair","EB/SOCHUM2.png","Aashir (Ash) Nair, the Vicechair of SOCHUM Jr, began his MUN career back in 6th grade, and has been fully encapsulated by his MUN experience. From making comically large research portfolios (which still exist) to throwing chappals in committee to \"enlighten the experience\", a lot of who he is today stems from the opportunities MUNs have given him. As an vid and passionate world event follower, political muser and law enthusiast, Aashir is excited to share his love for the debate, communication and social aspects of MUNs to junior delegates - whether they are first timers, or not. In his free time, you'll catch him with his best friend and one true love, his guitar, or find him holed up covered in oil paint somewhere. Best known as the photographer of the SOCHUM JR committee, now coming full circle as your Vice-Chair."],
      ["Anirudh C.","Moderator","EB/SOCHUM3.png","Anirudh Chaturvedula, the Moderator of SOCHUM Jr, has always been a passionate MUNner and enjoys debating with people over a plethora of topics sinnce his 1st MUN in 6th grade. From debating on topics such as the legality of the legalization of drugs in around half the US and if Russia\’s fears on NATO encroaching its borders are justified to arguing on immature stuff such as the physical impossibilities of light coming from Chhota Bheem\’s body after eating a laddu, Anirudh can happily talk and argue on anything for hours on end. This has helped him gain placements in the most of the 10+ MUNs he has attended as a delegate. Outside of MUNs, Anirudh\’s a passionate aerospace enthusiast, guitar player, swimmer and an avid reader."]
      ]
    );
  }
}