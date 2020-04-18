import 'package:flutter/material.dart';
import 'package:growskool/widgets/topic_button.dart';

class NavigationBar extends StatelessWidget {
  final BoxConstraints constraints;

  const NavigationBar(this.constraints);

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
              TopicButton(
                onPressed: () {},
                caption: 'Mathe',
              ),
              TopicButton(
                onPressed: () {},
                caption: 'Sachkunde',
              ),
            ],
          ),
        ],
      );
    } else {
      return Container(
        height: 40,
        color: Colors.lightBlue[700],
      );
    }
  }
}
