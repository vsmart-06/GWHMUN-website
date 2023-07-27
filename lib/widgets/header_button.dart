// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class HeaderButton extends StatefulWidget {
  String name;
  String navPath;
  HeaderButton({key, required this.name, required this.navPath}) : super(key : key);

  @override
  State<HeaderButton> createState() => _HeaderButtonState();
}

class _HeaderButtonState extends State<HeaderButton> {

  Color buttonColor = Colors.transparent;
  double fontSize = 30;
  String? fontFamily = GoogleFonts.ebGaramond().fontFamily;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        minimumSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          )
        )
      ),
      child: Text(
        widget.name,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily
        )
      ),
      onPressed: () {Navigator.popAndPushNamed(context, widget.navPath);},
      onHover: (value) {
        if (value) {
          setState(() {
            buttonColor = Color(0xFF73767E);
          });
        }
        else {
          setState(() {
            buttonColor = Colors.transparent;
          });
        }
      }
    );
  }
}