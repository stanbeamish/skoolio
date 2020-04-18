import 'package:flutter/material.dart';
import 'package:growskool/screens/start_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Growskool',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Montserrat',
        ),
      ),
      routes: {
        StartScreen.id: (context) => StartScreen(),
      },
      initialRoute: StartScreen.id,
    );
  }
}

