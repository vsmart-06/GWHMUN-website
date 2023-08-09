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
      bgLink: "https://drive.google.com/file/d/1jG442BQskB8PictmgwO6T9pjIIkbo30F/view?usp=sharing",
      executiveBoard: [["Eshwari Gundi","Vice chair","EB/UNSC2.png","Eshwari Gundi, the Vice Chair of UNSC, has been a passionate munner in the Bangalore circuit ever since her first MUN in the 7th grade sparked an insatiable thirst for global politics and diplomacy. You can often find her being the most dramatic in committee, although never lacking in strategy and research. Her love for negotiation and fiery debate is driven by her interest in current affairs, social justice, and literature. Crisis-driven committees like UNSC are where she feels most at home and will never decline an opportunity to prove another delegate wrong. Apart from MUN, she dabbles in photography and writing, directing most of her time to further pursue research about judicial prejudices to support her prospective career in law"],
      ["Sunay Mittal","Moderator","EB/UNSC3.png","Sunay Mittal, the UNSC moderator is an overenthusiastic power delegate who loves to interact with people and get to know their perspectives, only to gaslight them into believing what he thinks should be done. From representing Syria in the Council of Women's Rights, China, and DPRK in the Security Council to the drug capital of Myanmar in UNODC, Sunay loves the opportunity to engage in controversy, while always keeping time to condemn Western propaganda. Recently winning his first Best Delegate at Iksha-Mun 2023, he has a near-perfect record of placing in 5 out of his 6 muns. Apart from straining his voice in committee, Sunay loves to over-dramatize any situation at hand while keeping himself busy with the sciences."]
      ]
    );
  }
}