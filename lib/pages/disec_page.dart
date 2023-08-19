import "package:flutter/material.dart";
import 'committee_general.dart';

class DISEC extends StatefulWidget {
  DISEC({super.key});

  @override
  State<DISEC> createState() => _DISECState();
}

class _DISECState extends State<DISEC> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "Disarmament & International \nSecurity Committee (DISEC)",
      agenda: "Agenda: Discussing the arms trade in the middle east and caucasus \nregions with relation to the activities of Non-State Actors",
      logoLink: "committee_page/DISEC.png",
      bgLink: "https://drive.google.com/file/d/1a4XctcnHQX7dbPcJNFI1cN51csLhDzq9/view?usp=drive_link",
      executiveBoard: [["Alfred Thomas","Head chair","EB/DISEC1.png","\"Diplomacy is like jazz; it's about the notes you don't play.\""],
      ["Samhita ","Vice Chair","EB/DISEC2.png","\"Wit is educated insolence\" -Aristotle\n Skilled at delivering convincing speeches and arguments, Samhita has a passionate yet collected committee presence. She is adept at lobbying and thoroughly enjoys the various competitive aspects of MUN. Her extensive knowledge on historical affairs as well as her precise attention to detail has aided her in winning awards in prestigious conferences such as BJCMUN and AMUN. \nBesides her enthusiasm for MUN, Samhita is also a talented basketball player and an avid reader."],
      ["Vishruth Jasti","Moderator","EB/nopicgiven.png","Vishruth Jasti is engrossed in world matters, often finding himself deep in emotionally intense debates on humanitarian matters, ones in which he puts in his utmost effort to defend what is morally right. He recently placed in HMUN among a committee of close to 200 people and doesn\’t plan on stopping his deep dive into the MUN world. He tends to spend his free time either lazing on his bed playing overwatch, or taking part in heated debates (with himself) over issues that are of major concern."]
      ]
    );
  }
}