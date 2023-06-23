import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "dart:html";

class Footer extends StatelessWidget {
  Footer({super.key});

  String? fontMain = GoogleFonts.questrial().fontFamily;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1D1C1C),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Image(image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1121068938416103454/mun_logo.png"), width: 150, height: 150),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CONTACT US",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: fontMain,
                  fontSize: 25
                )
              ),
              Row(
                children: [
                  Text(
                    "SOCIALS",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain
                    )
                  ),
                  TextButton.icon(
                    onPressed: () {
                      window.open("https://www.instagram.com/gwhmun.2023/?igshid=MzRlODBiNWFlZA", "Instagram");
                    },
                    icon: Image(image: NetworkImage("https://png.pngtree.com/png-clipart/20180626/ourmid/pngtree-instagram-icon-instagram-logo-png-image_3584853.png"), width: 30, height: 30), 
                    label: Text(
                      "INSTAGRAM",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: fontMain
                      )
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "EMAILS ",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain
                    )
                  ),
                  Text(
                    "abc@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain
                    )
                  ),
                ],
              )
            ],
          )
        ],
      )
    );
  }
}