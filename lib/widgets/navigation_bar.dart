import 'package:flutter/material.dart';
import 'package:growskool/widgets/topic_button.dart';

class NavigationBar extends StatelessWidget {
  final String pageTitle;
  final BoxConstraints constraints;

  const NavigationBar({@required this.constraints, @required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.lightBlue[700],
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 5),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: _buildNav(constraints),
      ),
    );
  }

  Widget _buildNav(BoxConstraints constraints) {
    if (constraints.maxWidth > 800) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            pageTitle,
            style: TextStyle(
                fontSize: 25, fontFamily: 'Lobster', color: Colors.white),
          ),
          Row(
            children: <Widget>[
              TopicButton(
                onPressed: () {
                  //TODO: create the Deutsch page
                },
                caption: 'Deutsch',
              ),
              TopicButton(
                onPressed: () {
                  //TODO: create the Mathe page
                },
                caption: 'Mathe',
              ),
              TopicButton(
                onPressed: () {
                  //TODO: create the Sachkunde page
                },
                caption: 'Sachkunde',
              ),
            ],
          ),
        ],
      );
    } else {
      return Container(
        width: double.infinity,
        height: 40,
        color: Colors.lightBlue[700],
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              pageTitle,
              style: TextStyle(
                  fontSize: 25, fontFamily: 'Lobster', color: Colors.white),
            ),
            FlatButton(
              onPressed: () {
                //TODO: create the dropdown menu
              },
              child: Icon(Icons.menu, color: Colors.white, size: 20,),
            ),
          ],
        ),
      );
    }
  }
}
