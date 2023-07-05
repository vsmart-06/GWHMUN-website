import 'package:flutter/material.dart';

class HoverableImage extends StatefulWidget {
  final String imagePath;

  HoverableImage({required this.imagePath});

  @override
  _HoverableImageState createState() => _HoverableImageState();
}

class _HoverableImageState extends State<HoverableImage> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/unhrc");
      },
      onHover: (bool isHovered) {
        setState(() {
          _isHovered = isHovered;
        });
      },
      child: Image.asset(
        widget.imagePath,
        color: _isHovered ? Colors.black : Colors.transparent, // Change color based on hover state
        width: MediaQuery.of(context).size.width/4,
        height: MediaQuery.of(context).size.width/4,
      ),
    );
  }
}
