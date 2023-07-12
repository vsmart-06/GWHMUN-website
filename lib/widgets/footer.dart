// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "dart:html";

class Footer extends StatelessWidget {
  Footer({super.key});

  String? fontMain = GoogleFonts.questrial().fontFamily;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Container(
        color: Color(0xFF1D1C1C),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Image(image: AssetImage("assets/gwhmun_logo.png"), width: 150, height: 150),
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
                      "LOCATION ",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: fontMain
                      )
                    ),
                    TextButton(
                      onPressed: () {
                      window.open("https://goo.gl/maps/DUGyBHCAu287hoAD9", "school");
                      },
                      child: Text(
                        "Greenwood High School Sarjapur",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain
                        )
                      ),
                    ),
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
                    TextButton(
                      onPressed: () {
                      window.open("mailto:vansh052398@greenwoodhigh.edu.in", "vanshEmail");
                      },
                      child: Text(
                        "Secretary General- vansh052398@greenwoodhigh.edu.in",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain
                        )
                      ),
                    ),
                  ],
                ),
                Row(
                  children:[
                  TextButton(
                      onPressed: () {
                      window.open("mailto:rahul.p@greenwoodhigh.edu.in", "rahulEmail");
                      },
                      child: Text(
                        "Director General- rahul.p@greenwoodhigh.edu.in",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain
                        )
                      ),
                    ),
                  ]
                )
              ],
            )
          ],
        )
      ),
    );
  }
}


  Widget footer(BuildContext context) {
    String? fontMain = GoogleFonts.questrial().fontFamily;
    try{
    if(MediaQuery.of(context).orientation==Orientation.landscape){
      return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Container(
        color: Color(0xFF1D1C1C),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Image(image: AssetImage("assets/gwhmun_logo.png"), width: 150, height: 150),
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
                      "LOCATION ",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: fontMain
                      )
                    ),
                    TextButton(
                      onPressed: () {
                      window.open("https://goo.gl/maps/DUGyBHCAu287hoAD9", "school");
                      },
                      child: Text(
                        "Greenwood High School Sarjapur",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain
                        )
                      ),
                    ),
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
                    TextButton(
                      onPressed: () {
                      window.open("mailto:vansh052398@greenwoodhigh.edu.in", "vanshEmail");
                      },
                      child: Text(
                        "Secretary General- vansh052398@greenwoodhigh.edu.in",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain
                        )
                      ),
                    ),
                  ],
                ),
                Row(
                  children:[
                  TextButton(
                      onPressed: () {
                      window.open("mailto:rahul.p@greenwoodhigh.edu.in", "rahulEmail");
                      },
                      child: Text(
                        "\tDirector General- rahul.p@greenwoodhigh.edu.in",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain
                        )
                      ),
                    ),
                  ]
                )
              ],
            )
          ],
        )
      ),
    );
   }
   else{
    return Padding(padding: EdgeInsets.all(0));
   }
  }
  catch(Exception){return Padding(padding: EdgeInsets.all(0));}
  }
