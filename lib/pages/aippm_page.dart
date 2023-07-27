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
      agenda: "Agenda: Addressing the rising tensions in the Princely state of Kashmir [Freeze Date: 1st July, 1947]",
      logoLink: "committee_page/AIPPM.png",
      bgLink: "https://drive.google.com/file/d/1jG442BQskB8PictmgwO6T9pjIIkbo30F/view?usp=sharing",
      executiveBoard: [["Druthi VK","Head chair","EB/AIPPM1.png","\"A system cannot fail those it was not made for\""],
      ["Advaith Madhu","Vice chair","EB/AIPPM2.png","\"I do not believe in taking the right decision, I take a decision and make it right.\" ~ Muhammad Ali Jinnah"],
      ["Eshwar RA","Moderator","EB/AIPPM3.png","\"Do you think I am a hypocrite? Well, you should. I wouldn't disagree with you.\" Frank Underwood Eshwar RA, the Moderator of H-AIPPM, having established his relevance in the circuit and also being a rather good chemistry teacher, Eshwar wishes to flaunt his limited skills as a decent public speaker during his interactions.  Eshwar claims to be approachable at all times but lets you be the judge of how right he is."]
      ]
    );
  }
}