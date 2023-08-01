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
      title: "United Nation Office on Drugs and Crime (UNODC)",
      agenda: "Agenda: The multitude of escalations in the hostile situation of Iraq \n[Freeze Date: February 27, 2006]",
      logoLink: "committee_page/UNODC.png",
      bgLink: "https://drive.google.com/file/d/1jG442BQskB8PictmgwO6T9pjIIkbo30F/view?usp=sharing",
      executiveBoard: [["Aarav Jhunjhunwala","Head chair","EB/UNODC1.png","Aarav Jhunjhunwala, the Chairperson of the UNODC, with extensive knowledge in History and Politics, has made his mark on the Bangalore circuit. Having placed at every conference he's attended, with notable names such as SMUN, TISBMUN, CLMUN, and CoMUN, as well as serving as an Assistant Director at HMUN India 2022. Aarav believes the MUN circuit is a massive part of him. He has been labeled as an AIPPM delegate and chair due to his passion for Indian Polity. As a proud member of the Old MUNks, Aarav is dominating, yet considerate, some even consider him to be one of the nicest and most lenient chairs in Bangalore, but that\’s only until you step into a committee with him."],
      ["Eshwari Gundi","Vice chair","EB/UNODC2.png","Eshwari Gundi, the Vice Chair of UNODC, has been a passionate munner in the Bangalore circuit ever since her first MUN in the 7th grade sparked an insatiable thirst for global politics and diplomacy. You can often find her being the most dramatic in committee, although never lacking in strategy and research. Her love for negotiation and fiery debate is driven by her interest in current affairs, social justice, and literature. Crisis-driven committees like UNODC are where she feels most at home and will never decline an opportunity to prove another delegate wrong. Apart from MUN, she dabbles in photography and writing, directing most of her time to further pursue research about judicial prejudices to support her prospective career in law"],
      ["Sunay Mittal","Moderator","EB/UNODC3.png","Sunay Mittal, the UNODC moderator is an overenthusiastic power delegate who loves to interact with people and get to know their perspectives, only to gaslight them into believing what he thinks should be done. From representing Syria in the Council of Women's Rights, China, and DPRK in the Security Council to the drug capital of Myanmar in UNODC, Sunay loves the opportunity to engage in controversy, while always keeping time to condemn Western propaganda. Recently winning his first Best Delegate at Iksha-Mun 2023, he has a near-perfect record of placing in 5 out of his 6 muns. Apart from straining his voice in committee, Sunay loves to over-dramatize any situation at hand while keeping himself busy with the sciences."]
      ]
    );
  }
}