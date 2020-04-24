import 'package:flutter/material.dart';
import 'package:growskool/utils/article_colors.dart';

class ArticleTopicBadge extends StatelessWidget {
  final String topic;
  final BoxConstraints constraints;

  ArticleTopicBadge({this.topic, this.constraints});

  @override
  Widget build(BuildContext context) {
    return _createTopicBadge(topic);
  }

  Widget _createTopicBadge(String topic) {
    Widget _returnWidget;
    constraints.maxWidth > 400
        ? _returnWidget = Container(
            decoration: BoxDecoration(
              color: ArticleColors.getTopicColor(topic, true),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              child: Text(topic,
                  style: TextStyle(
                      color: ArticleColors.getTopicColor(topic, false))),
            ),
          )
        : _returnWidget = SizedBox(
            width: 0,
          );
    return _returnWidget;
  }
}
