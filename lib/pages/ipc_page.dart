import "package:flutter/material.dart";
import 'committee_general.dart';

class IPC extends StatefulWidget {
  IPC({super.key});

  @override
  State<IPC> createState() => _IPCState();
}

class _IPCState extends State<IPC> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "International Press Corps (IPC)",
      agenda: "Agenda: To report on contemporary geopolitics, while representing differing viewpoints",
      logoLink: "committee_page/IPC.png",
      bgLink: "https://drive.google.com/file/d/1jG442BQskB8PictmgwO6T9pjIIkbo30F/view?usp=sharing",
      executiveBoard: [["Adesh Naidu","Head chair","EB/IPC1.png","Adesh David Naidu, the Chairperson of IPC, has over 4 years in the Bangalore MUN circuit, 20+ awards such as CoMUN, GWHMUN, SJPUCMUN & SJBHSMUN, and in nearly every form of committee. He is one of the circuit's most consistent and versatile delegates, whom most are afraid to go up against. His immense passion for international politics and freedom of the press separates him from the crowd."],
      ["Aarush Vyas","Vice chair","EB/IPC2.png","Aarush Vyas, the Vice Chair of IPC, began his M.U.N. career in 9th grade, after moving to India from the United States. Whilst trying to deal with the shock of having school be genuinely challenging (a major step up from the U.S.), he decided to take part in the school’s M.U.N. delegation (again, a major step up from the U.S.), gaining invaluable experience. Whether it be leaking overheard crisis arcs to the opposition in exchange for Kur-Kure, or getting China involved with the Balkan war, he’s been shaped by his experience in the circuit. Aarush is excited to share his love for writing, freedom of speech, manipulation of truth, and bending the masses to your will with the delegates of IPC, whether they like it or not."]
      ]
    );
  }
}