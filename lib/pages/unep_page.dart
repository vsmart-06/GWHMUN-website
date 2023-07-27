import "package:flutter/material.dart";
import 'committee_general.dart';

class UNEP extends StatefulWidget {
  UNEP({super.key});

  @override
  State<UNEP> createState() => _UNEPState();
}

class _UNEPState extends State<UNEP> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "United Nation Environmental Program (UNEP)",
      agenda: "Agenda: Discussing the energy crisis in Europe with regards to the activities in Eastern europe",
      logoLink: "committee_page/UNEP.png",
      bgLink: "https://drive.google.com/file/d/1jG442BQskB8PictmgwO6T9pjIIkbo30F/view?usp=sharing",
      executiveBoard: [["Riana Kapoor","Head chair","EB/UNEP1.png","Vladimir Putin once famously proclaimed, \“We don't need a weakened government, but a strong opposition that keeps them in check.\”\nRiana Kapoor, the Head Chair of UNEP, is headstrong and passionate but a bit weird, and you can always count on her to make the committee enjoyable. With her MUN experience going back to 2019, Riana has seen both the offline and online circuits. Having the flame ignited after placing at the OAK JMUN, and seeing the horrible press cons and comically chaotic sessions, she is excited to share that flame with all old and new delegates. Addicted to MUNs as though they are her morning coffee, she is super excited to be chairing GWHMUN 2023 and ready to see what delegates have in store for her."],
      ["Rohan Hrishiraj","Vice chair","EB/UNEP2.png","\"I do not believe in taking the right decision, I take a decision and make it right.\" ~ Muhammad Ali Jinnah"],
      ["Dhruv Mittal","Moderator","EB/UNEP3.png","\"Do you think I am a hypocrite? Well, you should. I wouldn't disagree with you.\" \nFrank Underwood Eshwar RA, the Moderator of H-UNEP, having established his relevance in the circuit and also being a rather good chemistry teacher, Eshwar wishes to flaunt his limited skills as a decent public speaker during his interactions.  Eshwar claims to be approachable at all times but lets you be the judge of how right he is."]
      ]
    );
  }
}