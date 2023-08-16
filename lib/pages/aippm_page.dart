import "package:flutter/material.dart";
import 'committee_general.dart';

class AIPPM extends StatefulWidget {
  AIPPM({super.key});

  @override
  State<AIPPM> createState() => _AIPPMState();
}

class _AIPPMState extends State<AIPPM> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "All India Political Parties Meet (AIPPM)",
      agenda: "Agenda: Addressing the rising tensions in the Princely state of Kashmir \n[Freeze Date: 1st July, 1947]",
      logoLink: "committee_page/AIPPM.png",
      bgLink: "https://drive.google.com/file/d/1rzlL8Fhx6jwRSnBtcwVLeR91PnleNvh2/view?usp=drive_link",
      executiveBoard: [
      ["Advaith Madhu","Director","EB/AIPPM2.png","\"I do not believe in taking the right decision, I take a decision and make it right.\" ~ Muhammad Ali Jinnah"],
      ["Eshwar RA","Assistant Director","EB/AIPPM3.png","\"Do you think I am a hypocrite? Well, you should. I wouldn't disagree with you.\" Frank Underwood Eshwar RA, the Moderator of H-AIPPM, having established his relevance in the circuit and also being a rather good chemistry teacher, Eshwar wishes to flaunt his limited skills as a decent public speaker during his interactions.  Eshwar claims to be approachable at all times but lets you be the judge of how right he is."],
      ["Advaith Sreehari","Assistant Director","EB/AIPPM1.png","\"I'd like to a live a poor man, only with lots of money\"\n- Pablo Picasso\n\nAdvaith Sreehari has been a member of the MUN circuit for over 2 years, and is definitely of the most insane people to ever step foot into a committee. From designing nuclear missiles from scratch to level cities, airdropping locusts on farm fields, poisoning the water supply of 2 million people, and creating a Warsaw Pact 2, He has wreaked all kinds of havoc everywhere. He has placed in several conferences including DPSEMUN, NCFEMUN, DMUN and was in his first EB in just 9th grade. He is guaranteed to blow your mind in places you never even thought existed before. In his free time, he's either shredding on his guitar, supporting Manchester City (totally because they arent winning) or playing MarioKart 8."]
      ]
    );
  }
}