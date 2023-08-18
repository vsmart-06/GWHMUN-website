import "package:flutter/material.dart";
import 'committee_general.dart';

class UNSC extends StatefulWidget {
  UNSC({super.key});

  @override
  State<UNSC> createState() => _UNSCState();
}

class _UNSCState extends State<UNSC> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "United Nation Security Council (UNSC)",
      agenda: "Agenda: Addressing the rapid escalation of tensions in Afghanistan\n[Freeze Date: October 6, 2001]",
      logoLink: "committee_page/UNSC.png",
      bgLink: "https://drive.google.com/file/d/1EaOPtsAG5sHYle7FTCaEU3GXE6liREnt/view?usp=drive_link",
      executiveBoard: [["Rahul Prabhu","Head chair","EB/UNSC1.png","\"Memento Mori\" - Lamb of God\n\nOften being the most outspoken (and irritating) delegate in the room, Rahul loves lobbying and giving thunderous speeches, finding ways to make fun of half of the committee in the process. Frequently getting barred at a rate that rivals AIPPM delegates for making silly goofy jokes, he prefers committees like UNSC and DISEC where blackmail and ultimatums are considered acceptable forms of diplomacy. However, he never compromises on content, international law, and regulation, scoffing at delegates who are all bark no bite. He spends his time outside MUNs immersing in music and many other things (he swears he's interesting)."],
      ["Eshwari Gundi","Vice chair","EB/UNSC3.png","Eshwari Gundi, the Vice Chair of UNSC, has been a passionate munner in the Bangalore circuit ever since her first MUN in the 7th grade sparked an insatiable thirst for global politics and diplomacy. You can often find her being the most dramatic in committee, although never lacking in strategy and research. Her love for negotiation and fiery debate is driven by her interest in current affairs, social justice, and literature. Crisis-driven committees like UNSC are where she feels most at home and will never decline an opportunity to prove another delegate wrong. Apart from MUN, she dabbles in photography and writing, directing most of her time to further pursue research about judicial prejudices to support her prospective career in law"],
      ["Amisha Sharma","Vice chair","EB/UNHRC2.png","\"If we keep burying each other in the same dirt we fight over, who will be left to plant flowers?\"~Erin Van Vuren\nAmisha Sharma, the Vice Chairperson of UNSC, is a 10th-grader who discovered her love for MUNs last August. Ever since her first, overly ambitious HMUN, she was hooked. Today, she's attended over 10 MUNs as both a delegate and an EB member, and she has no plans to stop. Apart from MUNning, Amisha loves to indulge in reading, writing, and debating (arguing)."],
      ["Varun Iyer","Moderator","EB/JCC5.png","Varun Iyer, the Moderator for JCC, was introduced to the circuit in 2019, and is an avid crisis enthusiast, with his ice-cold demeanor and a compulsion for realism in his directives rendering a name for himself in the circuit, with placements in notable conferences such as TISBMUN, GEARMUN, and CJCMUN. With 10+ conferences under his belt, Varun cherishes passionate debate and creative documentation, being able to give a firm stance on topics ranging from the breakup of the USSR to the operations of the Chicago Outfit. When he isn't busy meticulously planning his next human rights violation, Varun can be found mastering the art of procrastination, running a newspaper or even playing the piano."],
      //["Veena","Moderator","EB/JCC5.png",""],
      ]
    );
  }
}