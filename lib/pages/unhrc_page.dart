import "package:flutter/material.dart";
import 'committee_general.dart';

class UNHRC extends StatefulWidget {
  UNHRC({super.key});

  @override
  State<UNHRC> createState() => _UNHRCState();
}

class _UNHRCState extends State<UNHRC> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "United Nation Human \nRights Council (UNHRC)",
      agenda: "Agenda: Discussing the violation women rights and prevalence of child \ntrafficking in the Middle east",
      logoLink: "committee_page/UNHRC.png",
      bgLink: "https://drive.google.com/file/d/1jG442BQskB8PictmgwO6T9pjIIkbo30F/view?usp=sharing",
      executiveBoard: [["Jasmeeth Singh","Head chair","EB/UNHRC1.png","As Robert Kiyosaki famously said, \"Often in the real world, it's not the smart who get ahead, but the bold.\" \nJasmeeth Singh, the Head Chair of UNHRC, has soared to new heights since his MUN journey began in the 8th grade. Having represented our organization at over 20 conferences, Jasmeet has an impressive 100% placement rate. His commitment to excellence and passion for international affairs has earned him numerous accolades at prestigious MUNs, including SJBHSMUN, ROTAMUN, CHSMUN, and CLMUN, just to name a few along with co-founding the prestigious private delegation Old Munks who are no strangers to the Bangalore circuit. Jasmeeth has truly become a delegate to watch on the renowned Bangalore Circuit. In addition to his MUN achievements, Jasmeeth served as the Head Delegate for St. Joseph Pre University College, where he exemplified strong leadership and now is pursuing his degree in business studies from Christ University, Bangalore. However, Jasmeeth's boldness extends beyond the realm of MUN. His unique \"Brick & Mortar\" contrarian philosophy has set him apart as a visionary entrepreneur."],
      ["Amisha Sharma","Vice chair","EB/UNHRC2.png","\"If we keep burying each other in the same dirt we fight over, who will be left to plant flowers?\"~Erin Van Vuren\nAmisha Sharma, the Vice Chairperson of UNHRC, is a 10th-grader who discovered her love for MUNs last August. Ever since her first, overly ambitious HMUN, she was hooked. Today, she's attended over 10 MUNs as both a delegate and an EB member, and she has no plans to stop. Apart from MUNning, Amisha loves to indulge in reading, writing, and debating (arguing)."],
      ["Dhriti Rao","Moderator","EB/UNHRC3.png","\“When you work with tigers, once in a while they\’re gonna take a swipe at you.\” -Jessica Pearson\nDhriti Rao, the Moderator of the UNHRC, is a 12th Grader from Greenwood High. She has been in the MUN circuit since she was 13 and has attended 8 conferences where she’s placed 5 times. Her interests lie in research, writing, debate and deeply understanding the monetary dependence of the modern world. She intends to major in Economics in college."]
      ]
    );
  }
}