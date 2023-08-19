import "package:flutter/material.dart";
import 'committee_general.dart';

class UNODC extends StatefulWidget {
  UNODC({super.key});

  @override
  State<UNODC> createState() => _UNODCState();
}

class _UNODCState extends State<UNODC> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "United Nation Office on \nDrugs and Crime (UNODC)",
      agenda: "Agenda: Combatting the illicit trafficking of narcotics\n and soaring crime rates in Latin America.",
      logoLink: "committee_page/UNODC.png",
      bgLink: "https://drive.google.com/file/d/1Ksr02yR77PPMiLgs9yN5ckUijN1rUIJl/view?usp=drive_link",
      executiveBoard: [["Ishaan Ghosh","Head chair","EB/UNODC1.png","\"A sincere diplomat is like dry water or wooden iron\" - Joseph Stalin\n\nIshaan's exceptional crisis delegate skills are attributed to his quick thinking, sharp wit, and attention to detail. He has a knack for generating chaos in his committees, whether it be as a delegate or an Executive Board member, by donning a pair of sunglasses and employing a dramatic flair. Despite his occasionally serious demeanor during committee sessions, he maintains an amiable personality and shows off his impressive dance moves outside of committee. Ishaan's humble personality allows him to create an environment for delegates to develop their skills and bring new ideas to the table. He has received numerous accolades from reputable Model UN conferences across the country, demonstrating his expertise in Model UN conferences as well as speed skating and long-distance cycling. He is known to make an attempt at being humorous, although he may not always succeed, and has openly admitted to not having a talent for making jokes."],
      ["Mukul Kumar","Vice chair","EB/UNODC2.png","Mukul Kumar, the Vice Chair of UNODC, is an 11th grader who, although started MUNning later than most in 9th grade, has still attended 10 conferences in and around Bangalore, acquiring several placements. Yet, Mukul has always been an avid debater in all possible forums, from politics to economics. Not wishing to be limited to a chair and table, he also spends his time playing badminton and reading outdoors."],
      ["Anya Sapru","Moderator","EB/UNODC3.png","Anya Sapru is an 11th grader who’s always enjoyed speaking and arguing especially about the world around her.  Beginning her MUN career at Oak JMUN 2019, she immediately began to enjoy everything from the tedious research to the terrifying press. Apart from munning, she is an avid art history nerd and is passionate about music and film."]
      ]
    );
  }
}