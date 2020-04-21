import 'package:flutter/material.dart';
import 'package:growskool/models/article.dart';
import 'package:growskool/widgets/single_article.dart';

class ArticlesList extends StatelessWidget {
  final List<Article> articles;
  final BoxConstraints constraints;

  ArticlesList({Key key, @required this.articles, @required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: constraints.maxWidth > 800
            ? MediaQuery.of(context).size.height * 0.8
            : MediaQuery.of(context).size.height * 0.68,
        child: ListView.builder(
          itemCount: articles == null ? 0 : articles.length,
          itemBuilder: (BuildContext context, int index) {
            return SingleArticle(
              article: articles[index],
              constraints: constraints,
            );
          },
        ),
      ),
    );
  }
}
