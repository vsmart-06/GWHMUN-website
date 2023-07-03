import "package:flutter/material.dart";
import "dart:html";
import "package:google_fonts/google_fonts.dart";
import "package:website/pages/header.dart";

class ResourcesButton extends StatefulWidget {
  final String imagePath;
  final String websitePath;
  final String name;
  ResourcesButton({required this.imagePath, required this.websitePath, required this.name});

  @override
  _ResourcesButtonState createState() => _ResourcesButtonState();
}

class _ResourcesButtonState extends State<ResourcesButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        window.open(widget.websitePath,widget.name);
      },
      onHover: (value) {
        setState(() {
          _isHovered = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ColorFiltered(
              colorFilter: _isHovered
                  ? ColorFilter.mode(Colors.transparent, BlendMode.clear)
                  : ColorFilter.matrix([
                      0.2126, 0.7152, 0.0722, 0, 0,
                      0.2126, 0.7152, 0.0722, 0, 0,
                      0.2126, 0.7152, 0.0722, 0, 0,
                      0, 0, 0, 1, 0
                    ]),
              child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  widget.imagePath,
                  fit: BoxFit.cover,
                  width: 2.4*MediaQuery.of(context).size.width/4,
                  height: MediaQuery.of(context).size.width/4,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(_isHovered ? 0.2 : 0), // Adjust the opacity and color as desired
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            Positioned(child: Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: GoogleFonts.ebGaramond().fontFamily
                    ),
                  ))
          ],
        ),
      ),
      
    );
  }
}