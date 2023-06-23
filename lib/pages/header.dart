import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  List<Color> buttonColors = [Colors.transparent, Colors.transparent, Colors.transparent, Colors.transparent, Colors.transparent];
  double fontSize = 25;
  String? fontFamily = GoogleFonts.questrial().fontFamily;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1D1C1C),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: NetworkImage("https://cdn.discordapp.com/attachments/1022434825115815937/1121068938416103454/mun_logo.png"), width: 75, height: 75),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColors[0]),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 85)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )
              )
            ),
            child: Text(
              "Home",
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily
              )
            ),
            onPressed: () {Navigator.popAndPushNamed(context, "/");},
            onHover: (value) {
              if (value) {
                setState(() {
                  buttonColors[0] = Color(0xFF73767E);
                });
              }
              else {
                setState(() {
                  buttonColors[0] = Colors.transparent;
                });
              }
            }
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColors[1]),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 85)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )
              )
            ),
            child: Text(
              "Committees",
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily
              )
            ),
            onPressed: () {Navigator.popAndPushNamed(context, "/committees");},
            onHover: (value) {
              if (value) {
                setState(() {
                  buttonColors[1] = Color(0xFF73767E);
                });
              }
              else {
                setState(() {
                  buttonColors[1] = Colors.transparent;
                });
              }
            }
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColors[2]),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 85)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )
              )
            ),
            child: Text(
              "Resources",
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily
              )
            ),
            onPressed: () {Navigator.popAndPushNamed(context, "/resources");},
            onHover: (value) {
              if (value) {
                setState(() {
                  buttonColors[2] = Color(0xFF73767E);
                });
              }
              else {
                setState(() {
                  buttonColors[2] = Colors.transparent;
                });
              }
            }
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColors[3]),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 85)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )
              )
            ),
            child: Text(
              "Secretariat",
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily
              )
            ),
            onPressed: () {Navigator.popAndPushNamed(context, "/secretariat");},
            onHover: (value) {
              if (value) {
                setState(() {
                  buttonColors[3] = Color(0xFF73767E);
                });
              }
              else {
                setState(() {
                  buttonColors[3] = Colors.transparent;
                });
              }
            }
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColors[4]),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 85)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )
              )
            ),
            child: Text(
              "Registration",
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily
              )
            ),
            onPressed: () {Navigator.popAndPushNamed(context, "/registration");},
            onHover: (value) {
              if (value) {
                setState(() {
                  buttonColors[4] = Color(0xFF73767E);
                });
              }
              else {
                setState(() {
                  buttonColors[4] = Colors.transparent;
                });
              }
            }
          ),
        ],
      )
    );
  }
}