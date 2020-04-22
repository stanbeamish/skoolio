import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:growskool/models/article.dart';

class SmallArticleItem extends StatelessWidget {
  final BoxConstraints constraints;
  final Article article;

  SmallArticleItem(
      {Key key, @required this.constraints, @required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _displayedTextLength =
        article.title.length > 19 ? constraints.maxWidth < 800 ? 50 : 100 : 100;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.stars,
                        color: Colors.yellow[700],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Autor: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(article.author),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    article.title,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    article.subtitle,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  _createTopicBadge(article.topic),
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                      '${article.text.substring(0, _displayedTextLength)} ...'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.date_range,
                        size: 26,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        article.date,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                      color: Colors.lightBlue[700],
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Zum Artikel',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image:
                            DecorationImage(image: AssetImage(article.image)),
                        border: Border.all(color: Colors.lightBlue[700]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.lightBlue[700],
                            spreadRadius: -10,
                            blurRadius: 10,
                          )
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createTopicBadge(String topic) {
    Widget _returnWidget;
    constraints.maxWidth > 400
        ? _returnWidget = Container(
            decoration: BoxDecoration(
              color: _getTopicBatchColor(topic, true),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              child: Text(topic,
                  style: TextStyle(color: _getTopicBatchColor(topic, false))),
            ),
          )
        : _returnWidget = SizedBox(
            width: 0,
          );
    return _returnWidget;
  }

  Color _getTopicBatchColor(String topic, bool withOpacity) {
    switch (topic) {
      case "Lernen Allgemein":
        {
          if (withOpacity) return Color(0xFF02B810).withOpacity(0.1);
          return Color(0xFF02B810);
        }
        break;
      case "Lernhilfen":
        {
          if (withOpacity) return Color(0xFF33C4FF).withOpacity(0.1);
          return Color(0xFF33C4FF);
        }
        break;
      default:
        {
          if (withOpacity) return Color(0xFF757374).withOpacity(0.1);
          return Color(0xFF757374);
        }
        break;
    }
  }
}
