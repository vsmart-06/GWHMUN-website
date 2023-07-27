// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class CommitteeButton extends StatefulWidget {
  final String imagePath;
  final String websitePath;
  double size;
  String name;
  CommitteeButton({required this.imagePath, required this.websitePath, required this.size, required this.name});
  @override
  _CommitteeButtonState createState() => _CommitteeButtonState();
}

class _CommitteeButtonState extends State<CommitteeButton> with SingleTickerProviderStateMixin {

  
  late AnimationController animationController;
  late Animation animation;
  late Animation cardColor;
  String? font = GoogleFonts.ebGaramond().fontFamily;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    animation = Tween<double>(begin: 100, end: 350).chain(CurveTween(curve: Curves.easeInOut)).animate(animationController);
    cardColor = ColorTween(begin: Colors.transparent, end: Color(0xFF313133)).animate(animationController);
    animationController.addListener(() {setState(() {});});
  }

  void hoverAnimation(bool hover) {
    hover ? animationController.forward() : animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: cardColor.value,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: TextButton(
          onPressed: () {Navigator.popAndPushNamed(context, widget.websitePath);},
          onHover: (event) {
            hoverAnimation(event);
          },
          child: Column(
            children: [
              Image.asset(
                widget.imagePath,
                width: MediaQuery.of(context).size.width*widget.size,
                height: MediaQuery.of(context).size.width*widget.size,
              ),
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: font
                )
              )
            ],
          ),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(Size(animation.value, animation.value)),
          )
        ),
      ),
    );
  }
}
