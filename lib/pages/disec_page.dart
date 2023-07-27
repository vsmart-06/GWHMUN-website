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
      bgLink: "https://drive.google.com/file/d/1jG442BQskB8PictmgwO6T9pjIIkbo30F/view?usp=sharing",
      executiveBoard: [["Alfred Thomas","Head chair","EB/DISEC1.png","\"Diplomacy is like jazz; it's about the notes you don't play.\""],
      ["Krish Mehta","Vice chair","EB/DISEC2.png","Krish Mehta, the Vice Chair for DISEC, has a versatile personality that stands out, having won an award in every type of committee. \"MAN what the hell I quit!\" - Said one of Krish's fellow delegates in TISBMUN last year who stormed off after Krish shook the very structure of traditional Mun'ning. Whether it is launching haphazard nukes, crafting devious communique, or his usual masterplan to attain world domination, Krish's abilities to transform a seemingly monotonous GA committee into a paradise of chaos all but hint at the pandemonium he will inflict in a DISEC committee. His ever-accentuating arsenal of accolades justifies his presence, having won laurels at almost every committee he has participated in; winning Best Delegate at TISBMUN, NPSMUN, OMUN, MADRAS MUN and placing in top-tier law schools such as PESMUN and ElpisMUN to name a few."],
      ["Ashvik Mishra","Moderator","EB/DISEC3.png","Ashvik Mishra, the Moderator for DISEC, is back in action, fueled by his desire for debate and chaos. Since 2018, he started by having fun with socialist countries and loving the press sessions as an excuse to put his country ahead. You can count on him to give the committee a laugh but also prepare to face his unforgiving press sessions. As a delegate, he floats like a Cadillac and stings like a Beemer, where either you stand with him or get steamrolled in committee. As the moderator for DISEC, he will strive to push delegates to their limits and ensure they take away something valuable from the committee. He loves whacky quotes and prefers committees to be as competitive as possible; here is one he lives by- \"Life is a game. Play to win\" ~ Harvey Spectre"]
      ]
    );
  }
}