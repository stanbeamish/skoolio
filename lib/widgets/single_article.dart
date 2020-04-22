import 'package:flutter/material.dart';
import 'package:growskool/models/article.dart';

class SingleArticle extends StatelessWidget {
  final Article article;
  final BoxConstraints constraints;

  SingleArticle({Key key, @required this.article, @required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.text_fields,
              size: 50,
            ),
            title: Text(
              article.title,
              style: TextStyle(
                fontSize: constraints.maxWidth > 800 ? 38 : 24,
                fontFamily: 'Lobster',
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              article.subtitle,
              style: TextStyle(
                fontSize: constraints.maxWidth > 800 ? 20 : 14,
              ),
            ),
          ),
          constraints.maxWidth > 800
              ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          article.image,
                          height: MediaQuery.of(context).size.height * 0.45,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          article.text,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        article.image,
                        width: MediaQuery.of(context).size.height * 0.7,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        article.text,
                        style: TextStyle(
                            fontSize: constraints.maxWidth > 800 ? 18 : 14,
                            color: Colors.black),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
