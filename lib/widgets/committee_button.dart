// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CommitteeButton extends StatefulWidget {
  final String imagePath;
  final String websitePath;
  double size;
  CommitteeButton({required this.imagePath, required this.websitePath, required this.size});
  @override
  _CommitteeButtonState createState() => _CommitteeButtonState();
}

class _CommitteeButtonState extends State<CommitteeButton> with SingleTickerProviderStateMixin {

  
  late AnimationController animationController;
  late Animation animation;
  late Animation cardColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    animation = Tween<double>(begin: 100, end: 300).chain(CurveTween(curve: Curves.easeInOut)).animate(animationController);
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
        shape: CircleBorder(side: BorderSide(color: const Color(0x55FFFFFF))),
        child: TextButton(
          onPressed: () {Navigator.popAndPushNamed(context, widget.websitePath);},
          onHover: (event) {
            hoverAnimation(event);
          },
          child: Image.asset(
            widget.imagePath,
            width: MediaQuery.of(context).size.width*widget.size,
            height: MediaQuery.of(context).size.width*widget.size,
          ),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(Size(animation.value, animation.value)),
            shape: MaterialStateProperty.all<OutlinedBorder>(CircleBorder())
          )
        ),
      ),
    );
  }
}
