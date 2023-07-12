import 'package:flutter/material.dart';
import 'package:website/widgets/header_button.dart';
import "package:google_fonts/google_fonts.dart";

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
  catch(Exception){}
}

String? font = GoogleFonts.questrial().fontFamily;
Drawer? getDrawer(BuildContext context){
  if (MediaQuery.of(context).orientation == Orientation.portrait) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      width: MediaQuery.of(context).size.width * 0.75,
      child: ListView(
        padding: EdgeInsets.zero,
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
          ListTile(
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
          ),
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
        ],
      ),
    );
  }
}