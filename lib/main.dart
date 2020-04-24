import 'package:flutter/material.dart';
import 'package:growskool/screens/pages/full_article_page.dart';
import 'package:growskool/screens/pages/full_image_page.dart';
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
          fontFamily: 'RobotoSlab',
        ),
      ),
      routes: {
        StartScreen.id: (context) => StartScreen(),
        FullArticlePage.id: (context) => FullArticlePage(),
        FullImagePage.id: (context) => FullImagePage(),
      },
      initialRoute: StartScreen.id,
    );
  }
}

