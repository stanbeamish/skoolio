import 'package:flutter/material.dart';

class ClaimBadge extends StatelessWidget {
  final BoxConstraints constraints;

  ClaimBadge({this.constraints});

  @override
  Widget build(BuildContext context) {
    double _fontSize = constraints.maxWidth > 800 ? 25.0 : 12.0;
    double _iconSize = constraints.maxWidth > 800 ? 45.0 : 20.0;
    double _sizeBoxHeight = constraints.maxWidth > 800 ? 20.0 : 12.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: RaisedButton(
            onPressed: () {},
            color: Colors.lightBlue[900],
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.wb_incandescent,
                    size: _iconSize,
                    color: Colors.yellowAccent[200],
                  ),
                  SizedBox(
                    height: _sizeBoxHeight,
                  ),
                  Text(
                    'ICH WERDE',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: _fontSize,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'ETWAS NEUES LERNEN',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: _fontSize,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
