import 'package:flutter/material.dart';
import 'package:growskool/widgets/topic_button.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.lightBlue[700],
        boxShadow: [
          BoxShadow(
              color: Colors.black, offset: Offset(0, 5), blurRadius: 10.0),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TopicButton(
              onPressed: () {},
              caption: 'Startseite',
              fontSize: 20,
            ),
            Row(
              children: <Widget>[
                TopicButton(
                  onPressed: () {},
                  caption: 'Deutsch',
                ),
                SizedBox(
                  width: 20,
                ),
                TopicButton(
                  onPressed: () {},
                  caption: 'Mathe',
                ),
                SizedBox(
                  width: 20,
                ),
                TopicButton(
                  onPressed: () {},
                  caption: 'Sachkunde',
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
