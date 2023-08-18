import "package:flutter/material.dart";
import 'committee_general.dart';

class WHO extends StatefulWidget {
  WHO({super.key});

  @override
  State<WHO> createState() => _WHOState();
}

class _WHOState extends State<WHO> {
  @override
  Widget build(BuildContext context) {
    return Committee(
      title: "World Health Organisation (WHO)",
      agenda: "Agenda: Discussing the Rising Concerns of Cross-Border Disease Transmissions",
      logoLink: "committee_page/WHO.png",
      bgLink: "https://drive.google.com/file/d/1rAG-_B5cuoMffLFMhqWOV3nn8lqIBMBr/view?usp=drive_link",
      executiveBoard: []
    );
  }
}