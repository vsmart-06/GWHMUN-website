import 'package:flutter/material.dart';

class CommitteeButton extends StatefulWidget {
  final String imagePath;
  final String websitePath;
  double size;
  CommitteeButton({required this.imagePath, required this.websitePath, required this.size});
  @override
  _CommitteeButtonState createState() => _CommitteeButtonState();
}

class _CommitteeButtonState extends State<CommitteeButton> {

  Color cardColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: TextButton(
        onPressed: () {Navigator.popAndPushNamed(context, widget.websitePath);},
        onHover: (event) {
          event ? setState(() {cardColor = Color(0xFF313133);}) : setState(() {cardColor = Colors.transparent;});
        },
        child: Image.asset(
          widget.imagePath,
          width: MediaQuery.of(context).size.width*widget.size,
          height: MediaQuery.of(context).size.width*widget.size,
        ),
      ),
    );
  }
}
