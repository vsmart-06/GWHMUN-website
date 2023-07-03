import "package:google_fonts/google_fonts.dart";
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CommitteeButton extends StatefulWidget {
  final String imagePath;
  final String websitePath;

  CommitteeButton({required this.imagePath, required this.websitePath});

  @override
  _CommitteeButtonState createState() => _CommitteeButtonState();
}

class _CommitteeButtonState extends State<CommitteeButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        color: _isHovered ? Color(0xFF313133) : Colors.transparent,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, widget.websitePath);
          },
          child: Image.asset(
            widget.imagePath,
            width: MediaQuery.of(context).size.width/4,
            height: MediaQuery.of(context).size.width/4,
          ),
        ),
      ),
    );
  }
}
