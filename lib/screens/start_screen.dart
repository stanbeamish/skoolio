import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:growskool/utils/styles.dart';
import 'package:growskool/utils/unsplash_credits.dart';
import 'package:growskool/widgets/navigation_bar.dart';
import 'package:growskool/widgets/unsplash_badge.dart';

class StartScreen extends StatefulWidget {
  static String id = 'startscreen';

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    UnplashCredits.photo(UnplashCredits.mattRagland)),
                colorFilter: ColorFilter.mode(
                  Colors.white,
                  BlendMode.colorBurn,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: <Widget>[
                _buildCenterTitle(context, constraints),
                NavigationBar(constraints),
                _buildClaimBadge(constraints),
                Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
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
          );
        },
      ),
      bottomNavigationBar: FancyBottomNavigation(
        initialSelection: _currentPage,
        tabs: [
          TabData(
            iconData: Icons.home,
            title: 'Start',
          ),
          TabData(
              iconData: Icons.info_outline,
              title: 'Info'
          ),
          TabData(
              iconData: Icons.bubble_chart,
              title: 'Lernen'
          ),
        ],
        onTabChangedListener: (position) {
          setState(() {
            _currentPage = position;
          });
        },
      ),
    );
  }

  Widget _buildClaimBadge(BoxConstraints constraints) {
    double _fontSize = constraints.maxWidth > 800 ? 25.0 : 12.0;
    double _iconSize = constraints.maxWidth > 800 ? 45.0 : 20.0;
    double _sizeBoxHeight = constraints.maxWidth > 800 ? 20.0 : 12.0;
    double _claimButtonHeight = constraints.maxHeight > 800 ? 150.0 : 90;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: _claimButtonHeight,
          child: RaisedButton(
            onPressed: () {},
            color: Colors.lightBlue[900],
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
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

  Widget _buildCenterTitle(BuildContext context, BoxConstraints constraints) {
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
          SizedBox(height: 10,),
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
