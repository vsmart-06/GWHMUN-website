import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:website/widgets/header_button.dart";

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
          TextButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              minimumSize: MaterialStateProperty.all<Size>(Size(50, 50)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )
              )
            ),
            icon: Image(
              image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1121068938416103454/mun_logo.png"), 
              width: 50, 
              height: 50
            ), 
            label: Text(""),
            onPressed: () {
              Navigator.popAndPushNamed(context, "/");
            },
          ),
          HeaderButton(
            name: "Home",
            navPath: "/"
          ),
          HeaderButton(
            name: "Committees",
            navPath: "/committees"
          ),
          HeaderButton(
            name: "Resources",
            navPath: "/resources"
          ),
          HeaderButton(
            name: "Secretariat",
            navPath: "/secretariat"
          ),
          HeaderButton(
            name: "Registrations",
            navPath: "/registrations"
          ),
        ],
      )
    );
  }
}