import "package:flutter/material.dart";
import 'committee_general.dart';

class UNHRC extends StatefulWidget {
  UNHRC({super.key});

  @override
  State<UNHRC> createState() => _UNHRCState();
}

class _UNHRCState extends State<UNHRC> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "United Nation Human \nRights Council (UNHRC)",
      agenda: "Agenda: Discussing the violation women rights and prevalence of child \ntrafficking in the Middle east",
      logoLink: "committee_page/UNHRC.png",
      bgLink: "https://drive.google.com/file/d/1z8ICfj8vX2BmlWsL2ieuXWYB9Ya6BHzm/view?usp=drive_link",
      executiveBoard: [["Jasmeeth Singh","Head chair","EB/UNHRC1.png","As Robert Kiyosaki famously said, \"Often in the real world, it's not the smart who get ahead, but the bold.\" \nJasmeeth Singh, the Head Chair of UNHRC, has soared to new heights since his MUN journey began in the 8th grade. Having represented our organization at over 20 conferences, Jasmeet has an impressive 100% placement rate. His commitment to excellence and passion for international affairs has earned him numerous accolades at prestigious MUNs, including SJBHSMUN, ROTAMUN, CHSMUN, and CLMUN, just to name a few along with co-founding the prestigious private delegation Old Munks who are no strangers to the Bangalore circuit. Jasmeeth has truly become a delegate to watch on the renowned Bangalore Circuit. In addition to his MUN achievements, Jasmeeth served as the Head Delegate for St. Joseph Pre University College, where he exemplified strong leadership and now is pursuing his degree in business studies from Christ University, Bangalore. However, Jasmeeth's boldness extends beyond the realm of MUN. His unique \"Brick & Mortar\" contrarian philosophy has set him apart as a visionary entrepreneur."],
      ["Ashvik Mishra","Vice chair","EB/DISEC3.png","Ashvik Mishra, the Vice Chair for UNHRC, is back in action, fueled by his desire for debate and chaos. Since 2018, he started by having fun with socialist countries and loving the press sessions as an excuse to put his country ahead. You can count on him to give the committee a laugh but also prepare to face his unforgiving press sessions. As a delegate, he floats like a Cadillac and stings like a Beemer, where either you stand with him or get steamrolled in committee. As the Vice Chair for UNHRC, he will strive to push delegates to their limits and ensure they take away something valuable from the committee. He loves whacky quotes and prefers committees to be as competitive as possible; here is one he lives by- \"Life is a game. Play to win\" ~ Harvey Spectre"],
      ["Dhriti Rao","Moderator","EB/UNHRC3.png","\“When you work with tigers, once in a while they\’re gonna take a swipe at you.\” -Jessica Pearson\nDhriti Rao, the Moderator of the UNHRC, is a 12th Grader from Greenwood High. She has been in the MUN circuit since she was 13 and has attended 8 conferences where she’s placed 5 times. Her interests lie in research, writing, debate and deeply understanding the monetary dependence of the modern world. She intends to major in Economics in college."],
      ["Viswanath Missula","Moderator","EB/nopicgiven.png","Viswanath Missula, the moderator of UNHRC, often struggles to stop speaking. Whether it's spontaneously fabricating elaborate facts and statistics that just seem like they might be true or stirring up intense fights with someone completely unexpected just to revel in the chaos, he's always trying to keep people guessing. He might not always be the loudest voice in committee but when he gets focused, he can be ruthless and cold. Harbouring a profound passion for history, philosophy and religion, Viswanath likes to masquerade as the most knowledgeable person in the room and is just as good at noticing mistruth as he is at making them."]
      ]
    );
  }
}