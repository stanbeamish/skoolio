import 'package:flutter/material.dart';
import 'package:growskool/utils/styles.dart';
import 'package:growskool/utils/unsplash_credits.dart';
import 'package:growskool/widgets/navigation_bar.dart';
import 'package:growskool/widgets/unsplash_badge.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      _buildBackgroundContainer(context, constraints),
                      NavigationBar(constraints),
                      _buildClaimBadge(constraints),
                      Container(
                        width: double.infinity,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            UnsplashBadge(
                              url: UnplashCredits.url(
                                  UnplashCredits.mattRagland),
                              photographer: UnplashCredits.name(
                                  UnplashCredits.mattRagland),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildClaimBadge(BoxConstraints constraints) {
    double _fontSize = constraints.maxWidth > 800 ? 25.0 : 12.0;
    double _iconSize = constraints.maxWidth > 800 ? 45.0 : 20.0;
    double _sizeBoxHeight = constraints.maxWidth > 800 ? 20.0 : 12.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          color: Colors.lightBlue[900],
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Column(
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container _buildBackgroundContainer(BuildContext context,
      BoxConstraints constraints) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(UnplashCredits.photo(UnplashCredits.mattRagland)),
          colorFilter: ColorFilter.mode(
            Colors.white,
            BlendMode.colorBurn,
          ),
          fit: BoxFit.cover,
        ),
      ),
      height: MediaQuery
          .of(context)
          .size
          .height,
      child: _buildCenterTitle(context, constraints),
    );
  }

  Center _buildCenterTitle(BuildContext context, BoxConstraints constraints) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 10.0, vertical: 8.0),
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
