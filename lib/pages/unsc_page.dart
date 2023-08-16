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
      agenda: "Addressing the rapid escalation of tensions in Afghanistan\n[Freeze Date: October 6, 2001]",
      logoLink: "committee_page/UNSC.png",
      bgLink: "",
      executiveBoard: [["Rahul Prabhu","Head chair","EB/UNSC1.png","\"Memento Mori\" - Lamb of God\n\nOften being the most outspoken (and irritating) delegate in the room, Rahul loves lobbying and giving thunderous speeches, finding ways to make fun of half of the committee in the process. Frequently getting barred at a rate that rivals AIPPM delegates for making silly goofy jokes, he prefers committees like UNSC and DISEC where blackmail and ultimatums are considered acceptable forms of diplomacy. However, he never compromises on content, international law, and regulation, scoffing at delegates who are all bark no bite. He spends his time outside MUNs immersing in music and many other things (he swears he's interesting)."],
      ["Akshara Bhat","Co-chair","EB/UNSC2.png","With a seemingly inexhaustible tolerance for fruitless debates and a passion for politics, Akshara Bhat is always ready for a challenge. Apart from arguing way too much with anyone willing to partake, she spends her time reading books, writing film reviews, and trying to explore new corners of the city. Often known for being the most diplomatic and respectful delegate in committee, her tact has led her to win accolades at prestigious MUNs across India. Collaboration to come to a common consensus to solve problems is a core tenet. Akshara is a firm believer in using MUN as a platform for change and invites the delegates for an enthralling and expeditious conference."],
      ["Eshwari Gundi","Vice chair","EB/UNSC3.png","Eshwari Gundi, the Vice Chair of UNSC, has been a passionate munner in the Bangalore circuit ever since her first MUN in the 7th grade sparked an insatiable thirst for global politics and diplomacy. You can often find her being the most dramatic in committee, although never lacking in strategy and research. Her love for negotiation and fiery debate is driven by her interest in current affairs, social justice, and literature. Crisis-driven committees like UNSC are where she feels most at home and will never decline an opportunity to prove another delegate wrong. Apart from MUN, she dabbles in photography and writing, directing most of her time to further pursue research about judicial prejudices to support her prospective career in law"],
      ["Sunay Mittal","Moderator","EB/UNSC4.png","Sunay Mittal, the UNSC moderator is an overenthusiastic power delegate who loves to interact with people and get to know their perspectives, only to gaslight them into believing what he thinks should be done. From representing Syria in the Council of Women's Rights, China, and DPRK in the Security Council to the drug capital of Myanmar in UNODC, Sunay loves the opportunity to engage in controversy, while always keeping time to condemn Western propaganda. Recently winning his first Best Delegate at Iksha-Mun 2023, he has a near-perfect record of placing in 5 out of his 6 muns. Apart from straining his voice in committee, Sunay loves to over-dramatize any situation at hand while keeping himself busy with the sciences."]
      ]
    );
  }
}