import "package:flutter/material.dart";
import 'committee_general.dart';

class WHO extends StatefulWidget {
  WHO({super.key});

  @override
  State<WHO> createState() => _WHOState();
}

class _WHOState extends State<WHO> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "World Health Organisation (WHO)",
      agenda: "Agenda: Discussing the Rising Concerns of Cross-Border Disease Transmissions",
      logoLink: "committee_page/WHO.png",
      bgLink: "https://drive.google.com/file/d/1rAG-_B5cuoMffLFMhqWOV3nn8lqIBMBr/view?usp=drive_link",
      executiveBoard: [["Krish Mehta","Head chair","EB/WHO1.png","Krish Mehta, the Head Chair for WHO, has a versatile personality that stands out, having won an award in every type of committee. \"MAN what the hell I quit!\" - Said one of Krish's fellow delegates in TISBMUN last year who stormed off after Krish shook the very structure of traditional Mun'ning. Whether it is launching haphazard nukes, crafting devious communique, or his usual masterplan to attain world domination, Krish's abilities to transform a seemingly monotonous GA committee into a paradise of chaos all but hint at the pandemonium he will inflict in a WHO committee. His ever-accentuating arsenal of accolades justifies his presence, having won laurels at almost every committee he has participated in; winning Best Delegate at TISBMUN, NPSMUN, OMUN, MADRAS MUN and placing in top-tier law schools such as PESMUN and ElpisMUN to name a few."],
      ["Harihar Prasad","Vice Chair","EB/WHO2.png","\“Everything can be taken from a man but one thing: the last of the human freedoms—to choose one\’s attitude in any given set of circumstances, to choose one\’s own way.\” \n― Viktor E. Frankl\n\nBold, loudspoken, and always glad to propagate chaos in committee, Harihar Prasad, the Vice Chair of WHO has a perfect placement record, with placements in CCC, EU, DISEC, UNSC and AIPPM. Experienced with a vast array of committees, but with a soft spot for crises, this delegate is sure to make any committee interesting. Starting off with a purely aggressive style that slowly evolved to one with exuberant speeches and carefully quoted articles from international law, he takes something from every single conference, learning at a frightening pace."],
      ["Sunay Mittal","Moderator","EB/WHO3.png","Sunay Mittal, the WHO moderator is an overenthusiastic power delegate who loves to interact with people and get to know their perspectives, only to gaslight them into believing what he thinks should be done. From representing Syria in the Council of Women's Rights, China, and DPRK in the Security Council to the drug capital of Myanmar in UNODC, Sunay loves the opportunity to engage in controversy, while always keeping time to condemn Western propaganda. Recently winning his first Best Delegate at Iksha-Mun 2023, he has a near-perfect record of placing in 5 out of his 6 muns. Apart from straining his voice in committee, Sunay loves to over-dramatize any situation at hand while keeping himself busy with the sciences."]
      ]
    );
  }
}