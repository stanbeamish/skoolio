import 'package:flutter/material.dart';
import 'package:growskool/models/article.dart';
import 'package:growskool/screens/pages/full_image_page.dart';
import 'package:growskool/utils/article_colors.dart';
import 'package:growskool/widgets/article_topic_badge.dart';

class FullArticlePage extends StatelessWidget {
  static String id = 'fullarticle';

  final Article article;
  final BoxConstraints constraints;

  FullArticlePage({this.article, this.constraints});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            article.title,
            style: TextStyle(
                fontSize: constraints.maxWidth > 800 ? 30 : 20,
                fontFamily: 'Lobster'),
          ),
        ),
        body: constraints.maxWidth > 800
            ? _buildForBigScreen(context, article)
            : _buildForSmallScreen(context, article),
      ),
    );
  }

  Widget _buildForSmallScreen(BuildContext context, Article article) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: ArticleColors.getTopicColor(article.topic, true),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ArticleTopicBadge(
                  topic: article.topic,
                  constraints: constraints,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        article.title,
                        style: TextStyle(
                            fontSize: 24, fontStyle: FontStyle.normal),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        article.subtitle,
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            color: Colors.lightBlue[700]),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      _buildImageContainer(article, context, false),
                      SizedBox(
                        height: 12,
                      ),
                      Text(article.text),
                      _buildEndOfTextBadge()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForBigScreen(BuildContext context, Article article) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ArticleColors.getTopicColor(article.topic, true),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ArticleTopicBadge(
                topic: article.topic,
                constraints: constraints,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            article.title,
                            style: TextStyle(
                                fontSize: 40, fontStyle: FontStyle.normal),
                          ),
                          Text(
                            article.subtitle,
                            style: TextStyle(
                                fontSize: 20, color: Colors.lightBlue[700]),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(article.text),
                          Center(child: _buildEndOfTextBadge()),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: _buildImageContainer(article, context, true),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildImageContainer(
      Article article, BuildContext context, bool forBigScreen) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: article.image,
              child: Image.asset(
                article.image,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, FullImagePage.id,
                    arguments: FullImagePageArgs(
                      image: article.image,
                      imageTitle: article.imageTitle,
                    ));
              },
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.fullscreen,
                    size: forBigScreen ? 50 : 30,
                    color: Colors.lightBlue[700],
                  ),
                  Text(
                    'Bild groß anzeigen',
                    style: TextStyle(fontSize: forBigScreen ? 18 : 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEndOfTextBadge() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 12,
        ),
        Container(
          width: 170,
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.wb_incandescent,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Ende des Texts',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
