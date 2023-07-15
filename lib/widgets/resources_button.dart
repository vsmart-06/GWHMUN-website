import "package:flutter/material.dart";
import "dart:html";
import "package:google_fonts/google_fonts.dart";

class ResourcesButton extends StatefulWidget {
  final String imagePath;
  final String websitePath;
  final String name;
  ResourcesButton({required this.imagePath, required this.websitePath, required this.name});

  @override
  _ResourcesButtonState createState() => _ResourcesButtonState();
}

class _ResourcesButtonState extends State<ResourcesButton> {
  ColorFilter filter = ColorFilter.matrix([
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0, 0, 0, 1, 0
  ]);

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation==Orientation.landscape){
      return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ColorFiltered(
        colorFilter: filter,
        child: TextButton(
          onPressed: () {window.open(widget.websitePath, "Resource");},
          onHover: (hover) {
            if (hover) {
              setState(() {
                filter = ColorFilter.mode(Colors.transparent, BlendMode.clear);
              });
            }
            else {
              setState(() {
                filter = ColorFilter.matrix([
                  0.2126, 0.7152, 0.0722, 0, 0,
                  0.2126, 0.7152, 0.0722, 0, 0,
                  0.2126, 0.7152, 0.0722, 0, 0,
                  0, 0, 0, 1, 0
                ]);
              });
            }
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  widget.imagePath,
                  fit: BoxFit.cover,
                  width: 2.4*MediaQuery.of(context).size.width*0.25,
                  height: MediaQuery.of(context).size.width*0.25,
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontFamily: GoogleFonts.ebGaramond().fontFamily,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            )
          )
        ),
      ),
    );
    }
    else{
      return Padding(
      padding: const EdgeInsets.all(10.0),
        child: TextButton(
          onPressed: () {window.open(widget.websitePath, "Resource");},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  widget.imagePath,
                  fit: BoxFit.cover,
                  width: 2.4*MediaQuery.of(context).size.width*(1/3),
                  height: MediaQuery.of(context).size.width*(1/3),
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: GoogleFonts.ebGaramond().fontFamily,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            )
          )
        ),
    );
    

    }
  }
}