import "package:flutter/material.dart";
import 'committee_general.dart';

class JCC extends StatefulWidget {
  JCC({super.key});

  @override
  State<JCC> createState() => _JCCState();
}

class _JCCState extends State<JCC> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "Joint Crisis Cabinet (JCC)",
      agenda: "Agenda: The Russo - Japanese War 1904 \n[Freeze Date: 15th February 1904]",
      logoLink: "committee_page/JCC.png",
      bgLink: "https://drive.google.com/file/d/1_H2OxjTmeG9URdukiIosd3jGWDXKhBYH/view?usp=drive_link",
      executiveBoard: [["Ananya Khare","Head chair","EB/JCC1.png","\“Because freedom, I am told, is nothing but the distance between the hunter and its prey.\” Ocean Vuong\n\nAnanya Khare is a hurricane disguised as the loudest laugh in the room. Having placed in all but one of the MUNs she's participated in, Ananya specialises in crisis and semi-crisis committees. Being a free verse poet, Ananya dismantles arguments with stupefying ease and makes sure you open a dictionary while she does it. A death stare coupled with a  \"delegate, are you insinuating\" is merely the calm before the storm she's bound to brew up in her committee. An avid reader of war poetry, backroom diplomacy is her biggest forte. A heartfelt indie music connoisseur, Ananya is easily the best researched person in most rooms. When not with a German thesaurus, you can find her playing the flute or watching breadtube for hours on end with the biggest mug of hot dark chocolate. \nPresenting to you the Chairperson of the much awaited Continuous Crisis Committee, Ananya Khare."],
      ["Rishikesh Madhuvairy","Crisis Director","EB/JCC2.png","Rishikesh Madhuvairy, the Crisis Director, is a zealous orator, and a firm, driven proponent of substantive research and diplomacy. He has shaped his formative months in the Bangalore circuit with a glisten, having started MUNs during the pandemic, he developed an unwavering diligence for delegating and versatility in any MUN setting. Best Delegate awards at KMUN, NPSHMUN, TISBMUN, and Outstanding Delegate at Harvard MUN India 2022 are only a few of his many achievements thus far. He has established a rooted interest in crisis direction and continuous crisis committees, knowledgeable in captivating focuses ranging from the Vietnam War to the Anschluss, and everything in between. Delegates will naturally enjoy any committee whose immersive dynamic, enthralling crisis arcs, and seamless flow are in the palm of his hand."],
      ["Soham Dhar","Vice chair","EB/JCC3.png","Soham Dhar, the Vice Chairperson of JCC, has a lifelong passion for international relations and foreign affairs and thrives in the challenging environment of MUN conferences. MUNs hold a special place in his heart. From passionately defending his country's stance on fossil fuels, to invoking empathy for matters of sovereignty; MUNs have offered him a great diversity of opportunities. He can effortlessly transition from accusation to negotiation, achieving mutual satisfaction and sharing laughter. He looks forward to fulfilling his duties at the conference with great enthusiasm."],
      ["Vipran Vasan","Moderator","EB/JCC4.png","Vipran Vasan, the Moderator for JCC,  is a passionate and accomplished Model UN delegate with a diverse range of interests, including Physics, Mathematics, Video Games, and Sports. With experience of participating in MUN conferences across Bangalore, Vipran has placed in both General Assemblies and Crisis committees. In addition to his MUN experience, Vipran has a background in debating and public speaking, which provides them with a unique perspective on global issues and international relations."]
      
      ]
    );
  }
}