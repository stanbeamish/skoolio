import 'package:flutter/material.dart';
import 'package:growskool/utils/styles.dart';

class CenterTitle extends StatelessWidget {
  final BoxConstraints constraints;

  CenterTitle({this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            ' Growskool ',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: constraints.maxWidth > 800 ? 135 : 65,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              color: Colors.lightBlue,
              fontFamily: 'Lobster',
              shadows: [
                BoxShadow(
                  offset: Offset(0, 0),
                  color: Colors.black,
                  blurRadius: constraints.maxWidth > 800 ? 20.0 : 7.0,
                  spreadRadius: constraints.maxWidth > 800 ? 20.0 : 7.0,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: Color(0xFF03A9F4).withOpacity(0.5),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  'Wir machen weiter',
                  style: constraints.maxWidth > 800
                      ? kBoldLetters25
                      : kBoldLetters15,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Alle Zusammen',
                  style: constraints.maxWidth > 800
                      ? kBoldLetters25
                      : kBoldLetters15,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '#BleibZuHause',
                  style: constraints.maxWidth > 800
                      ? kNormalLetters20
                      : kNormalLetters15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
