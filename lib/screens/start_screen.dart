import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:growskool/screens/pages/start_screen_home_page.dart';
import 'package:growskool/screens/pages/start_screen_info_page.dart';
import 'package:growskool/screens/pages/start_screen_learning_page.dart';

class StartScreen extends StatefulWidget {
  static String id = 'startscreen';

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _currentPage = 0;

  _getPage(int pageNo, BoxConstraints constraints) {
    switch (pageNo) {
      case 0:
        return StartScreenHomePage(constraints: constraints,);
      case 1:
        return StartScreenInfoPage(constraints: constraints,);
      case 2:
        return StartScreenLearningPage(constraints: constraints,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return _getPage(_currentPage, constraints);
          },
        ),
        bottomNavigationBar: FancyBottomNavigation(
          initialSelection: _currentPage,
          tabs: [
            TabData(
              iconData: Icons.home,
              title: 'Start',
            ),
            TabData(iconData: Icons.chat, title: 'Blog'),
            TabData(iconData: Icons.bubble_chart, title: 'Lernen'),
          ],
          onTabChangedListener: (position) {
            setState(() {
              _currentPage = position;
            });
          },
        ),
      ),
    );
  }
}
