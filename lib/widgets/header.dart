import 'package:flutter/material.dart';
import 'package:website/widgets/header_button.dart';
import "package:google_fonts/google_fonts.dart";
import "dart:html";

AppBar? getTopBar(BuildContext context) {
  try{
  if(MediaQuery.of(context).orientation==Orientation.landscape){
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.grey[900],
      actions: [
        Expanded(
          child:
            Row(
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
                      image: AssetImage("assets/gwhmun_logo.png"), 
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
                  /* HeaderButton(
                    name: "Resources",
                    navPath: "/resources"
                  ), */
                  HeaderButton(
                    name: "Secretariat",
                    navPath: "/secretariat"
                  ),
                  HeaderButton(
                    name: "Registrations",
                    navPath: "/registrations"
                  ),
              ],
            ),
        ),
      ],
    );
  }
  else {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }
  }
  catch(Exception){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }
  
}

String? font = GoogleFonts.questrial().fontFamily;
Drawer getDrawer(BuildContext context){
  return Drawer(
      backgroundColor: Colors.grey[900],
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 10,
            child: DrawerHeader(
              child: Row(
                children: [
                  Image(
                    image: AssetImage("gwhmun_logo.png")
                  ),
                  Text(
                    "GWHMUN 2023",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: font
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey[900],
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontFamily: font,
                fontSize: 20
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, "/");
            },
          ),
          ListTile(
            title: Text(
              "Committees",
              style: TextStyle(
                color: Colors.white,
                fontFamily: font,
                fontSize: 20
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, "/committees");
            },
          ),   
          /* ListTile(
            title: Text(
              "Resources",
              style: TextStyle(
                color: Colors.white,
                fontFamily: font,
                fontSize: 20
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, "/resources");
            },
          ), */
          ListTile(
            title: Text(
              "Secretariat",
              style: TextStyle(
                color: Colors.white,
                fontFamily: font,
                fontSize: 20
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, "/secretariat");
            },
          ),
          ListTile(
            title: Text(
              "Registrations",
              style: TextStyle(
                color: Colors.white,
                fontFamily: font,
                fontSize: 20
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, "/registrations");
            },
          ),
          Expanded(
            child: Container(
              color: Color(0xFF1D1C1C),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "CONTACT US",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: font,
                      fontSize: 25
                    )
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Text(
                        "SOCIALS",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: font
                        )
                      ),
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
                          fontFamily: font
                        )
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10, bottom: 15, top:15),
                  child: Text(
                    "LOCATION",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: font
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: TextButton(
                    onPressed: () {
                      window.open("https://goo.gl/maps/DUGyBHCAu287hoAD9", "school");
                    },
                    child: Text(
                      "Greenwood High School Sarjapur",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: font
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: Text(
                        "EMAILS",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: font
                        )
                      ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: TextButton(
                            onPressed: () {
                              window.open("mailto:vansh052398@greenwoodhigh.edu.in", "vanshEmail");
                            },
                            child: Text(
                              "Secretary General- \nvansh052398@greenwoodhigh.edu.in",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: font
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),

                          child: TextButton(
                            onPressed: () {
                              window.open("mailto:rahul.p@greenwoodhigh.edu.in", "rahulEmail");
                            },
                            child: Text(
                              "Director General- \nrahul.p@greenwoodhigh.edu.in",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: font
                              )
                            ),
                          ),
                        ),
                      ]
                    ),
          Padding(padding: const EdgeInsets.only(bottom: 50),)
        ]
        ),
      ),
    )
        ],
      ),
    );
  
}