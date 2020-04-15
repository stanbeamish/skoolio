import 'package:flutter/material.dart';
import 'package:skoolio/screens/start_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skoolio',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue[900],
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Montserrat',
        ),
      ),
      home: StartScreen(),
    );
  }
}

