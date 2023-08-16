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
      agenda: "Agenda: Discussing the energy crisis in Europe with regards \nto the activities in Eastern europe",
      logoLink: "committee_page/UNEP.png",
      bgLink: "https://drive.google.com/file/d/1o211lI9cr85sq0dhMr3GmfoljYNM3rok/view?usp=drive_link",
      executiveBoard: [["Riana Kapoor","Head chair","EB/UNEP1.png","Vladimir Putin once famously proclaimed, \“We don't need a weakened government, but a strong opposition that keeps them in check.\”\nRiana Kapoor, the Head Chair of UNEP, is headstrong and passionate but a bit weird, and you can always count on her to make the committee enjoyable. With her MUN experience going back to 2019, Riana has seen both the offline and online circuits. Having the flame ignited after placing at the OAK JMUN, and seeing the horrible press cons and comically chaotic sessions, she is excited to share that flame with all old and new delegates. Addicted to MUNs as though they are her morning coffee, she is super excited to be chairing GWHMUN 2023 and ready to see what delegates have in store for her."],
      ["Rohan Hrishiraj","Vice chair","EB/UNEP2.png","\"Victorious warriors win first and then go to war, while defeated warriors go to war first and then seek to win\" ~ Sun Tzu\n\nRohan Hrishiraj, the Vice Chairperson of UNEP, is a refined and sharp mind behind his initial courteous outlook. Don't let Rohan's calm exterior fool you, as he is constantly thinking about turning the tables in committee with the most exasperating and possibly deranged speeches religiously preaching his philosophy of how fortune favors the bold. He has faced an upsurge in the MUN circuit after placing in his very first mun at NCFEMUN'21. Despite his chaotic committee sessions and seemingly frustrating nevertheless comical press conferences, he has managed to take away something from every conference he has attended being one of the most adept learners in this circuit. To not become a person of success, but of value Rohan is often found broadening his interests beyond that of munning, often seen as a vivid debater, a skilled basketball player who has played for numerous teams across Karnataka, and a young, talented powerlifter, He has perfectly displayed his versatility and adaptability to any situation he may face."],
      ["Dhruv Mittal","Moderator","EB/UNEP3.png","Dhruv Mittal, the Moderator of the UNEP, started MUN thinking crises were real. From panicking during crisis to getting targeted during crisis yet dominating the crisis, Dhruv has had a love-hate relationship with MUNs, they have become part of his routine. Needless to say, if he does it for the Socials or not because that evening you see a different side of him, MUN has seen his two-faced personality where he secretly led two blocs only to leave one behind at the last moment. He can do anything to achieve success in the end, and we have seen a lot of it. As part of the Executive Board, he aims to ensure productive committee sessions and guide delegates in navigating through the complexities of international relations. As the moderator, no one is safe from the constant pressing and drama throughout committee sessions. Apart from MUNs, he loves football and more importantly, Chelsea which has taught him to handle pain in numerous situations (not including that of RCB)."]
      ]
    );
  }
}