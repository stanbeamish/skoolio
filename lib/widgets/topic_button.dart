import 'package:flutter/material.dart';

class TopicButton extends StatelessWidget {
  final String caption;
  final VoidCallback onPressed;
  final double fontSize;

  TopicButton({this.caption, this.onPressed, this.fontSize = 16.0});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      hoverColor: Colors.lightBlue[400],
      child: Text(
        caption,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
