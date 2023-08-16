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
      executiveBoard: [["Siddhant Roy","Head chair","EB/JCC1.png","Siddhant Roy, the Head Chair for JCC, is an avid debater and has been in the circuit for three years. A passionate reader of philosophy and current affairs, he believes in scintillating conversations with substance and logic. He hopes this MUN reaches a successful and meaningful solution to the deep problems posed by the committees. "],
      ["Rishikesh Madhuvairy","Crisis Director","EB/JCC2.png","Rishikesh Madhuvairy, the Crisis Director, is a zealous orator, and a firm, driven proponent of substantive research and diplomacy. He has shaped his formative months in the Bangalore circuit with a glisten, having started MUNs during the pandemic, he developed an unwavering diligence for delegating and versatility in any MUN setting. Best Delegate awards at KMUN, NPSHMUN, TISBMUN, and Outstanding Delegate at Harvard MUN India 2022 are only a few of his many achievements thus far. He has established a rooted interest in crisis direction and continuous crisis committees, knowledgeable in captivating focuses ranging from the Vietnam War to the Anschluss, and everything in between. Delegates will naturally enjoy any committee whose immersive dynamic, enthralling crisis arcs, and seamless flow are in the palm of his hand."],
      ["Soham Dhar","Vice chair","EB/JCC3.png","Soham Dhar, the Vice Chairperson of JCC, has a lifelong passion for international relations and foreign affairs and thrives in the challenging environment of MUN conferences. MUNs hold a special place in his heart. From passionately defending his country's stance on fossil fuels, to invoking empathy for matters of sovereignty; MUNs have offered him a great diversity of opportunities. He can effortlessly transition from accusation to negotiation, achieving mutual satisfaction and sharing laughter. He looks forward to fulfilling his duties at the conference with great enthusiasm."],
      ["Varun Iyer","Moderator","EB/JCC5.png","Varun Iyer, the Moderator for JCC, was introduced to the circuit in 2019, and is an avid crisis enthusiast, with his ice-cold demeanor and a compulsion for realism in his directives rendering a name for himself in the circuit, with placements in notable conferences such as TISBMUN, GEARMUN, and CJCMUN. With 10+ conferences under his belt, Varun cherishes passionate debate and creative documentation, being able to give a firm stance on topics ranging from the breakup of the USSR to the operations of the Chicago Outfit. When he isn't busy meticulously planning his next human rights violation, Varun can be found mastering the art of procrastination, running a newspaper or even playing the piano."],
      ["Vipran Vasan","Moderator","EB/JCC4.png","Vipran Vasan, the Moderator for JCC,  is a passionate and accomplished Model UN delegate with a diverse range of interests, including Physics, Mathematics, Video Games, and Sports. With experience of participating in MUN conferences across Bangalore, Vipran has placed in both General Assemblies and Crisis committees. In addition to his MUN experience, Vipran has a background in debating and public speaking, which provides them with a unique perspective on global issues and international relations."]
      
      ]
    );
  }
}