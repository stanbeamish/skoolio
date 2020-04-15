
import 'package:flutter/material.dart';
import 'package:growskool/widgets/navigation_bar.dart';
import 'package:growskool/widgets/unsplash_badge.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/ben-white-small.jpg"),
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
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            ' Growskool ',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 135,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Lobster'
                            ),
                          ),
                          Text(
                            'Wir machen weiter',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            'Alle Zusammen',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            '#BleibZuHause',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  NavigationBar(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {},
                        color: Colors.lightBlue[900],
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Icon(Icons.wb_incandescent, size: 45,
                                    color: Colors.yellowAccent[200],),
                                  SizedBox(height: 20,),
                                  Text(
                                    'ICH WERDE',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'ETWAS NEUES LERNEN',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 25,
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
                  ),
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
                          url: 'https://unsplash.com/@benwhitephotography?utm_medium=referral&amp;utm_campaign=photographer-credit&amp;utm_content=creditBadge',
                          photographer: 'Ben White',
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
