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
      bgLink: "https://drive.google.com/file/d/1jG442BQskB8PictmgwO6T9pjIIkbo30F/view?usp=sharing",
      executiveBoard: [["Ishaan Ghosh","Head chair","EB/UNODC1.png","\"A sincere diplomat is like dry water or wooden iron\" - Joseph Stalin\n\nIshaan's exceptional crisis delegate skills are attributed to his quick thinking, sharp wit, and attention to detail. He has a knack for generating chaos in his committees, whether it be as a delegate or an Executive Board member, by donning a pair of sunglasses and employing a dramatic flair. Despite his occasionally serious demeanor during committee sessions, he maintains an amiable personality and shows off his impressive dance moves outside of committee. Ishaan's humble personality allows him to create an environment for delegates to develop their skills and bring new ideas to the table. He has received numerous accolades from reputable Model UN conferences across the country, demonstrating his expertise in Model UN conferences as well as speed skating and long-distance cycling. He is known to make an attempt at being humorous, although he may not always succeed, and has openly admitted to not having a talent for making jokes."],
      ["Mukul Kumar","Vice chair","EB/UNODC2.png","Mukul Kumar, the Vice Chair of UNODC, is an 11th grader who, although started MUNning later than most in 9th grade, has still attended 10 conferences in and around Bangalore, acquiring several placements. Yet, Mukul has always been an avid debater in all possible forums, from politics to economics. Not wishing to be limited to a chair and table, he also spends his time playing badminton and reading outdoors."],
      ["Harihar Prasad","Moderator","EB/UNODC3.png","\“Everything can be taken from a man but one thing: the last of the human freedoms—to choose one\’s attitude in any given set of circumstances, to choose one\’s own way.\” \n― Viktor E. Frankl\n\nBold, loudspoken, and always glad to propagate chaos in committee, Harihar Prasad, the moderator of UNODC has a perfect placement record, with placements in CCC, EU, DISEC, UNSC and AIPPM. Experienced with a vast array of committees, but with a soft spot for crises, this delegate is sure to make any committee interesting. Starting off with a purely aggressive style that slowly evolved to one with exuberant speeches and carefully quoted articles from international law, he takes something from every single conference, learning at a frightening pace."]
      ]
    );
  }
}