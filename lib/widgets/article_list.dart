import 'package:flutter/material.dart';
import 'package:growskool/models/article.dart';
import 'package:growskool/widgets/small_article_item.dart';

class ArticlesList extends StatelessWidget {
  final List<Article> articles;
  final BoxConstraints constraints;

  ArticlesList({Key key, @required this.articles, @required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _numberOfCols = constraints.maxWidth > 1200 ? 3 : constraints.maxWidth >
        760 ? 2 : 1;

    return SingleChildScrollView(
      child: Container(
          height: constraints.maxWidth > 800
              ? MediaQuery.of(context).size.height * 0.8
              : MediaQuery.of(context).size.height * 0.68,
          child: GridView.count(
            crossAxisCount: _numberOfCols,
            shrinkWrap: true,
            children: List.generate(articles.length, (index) {
              return SmallArticleItem(
                constraints: constraints,
                article: articles[index],
              );
            }),
          )
      ),
    );
  }
}
