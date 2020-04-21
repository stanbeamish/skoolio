import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:growskool/models/article.dart';
import 'package:growskool/utils/unsplash_credits.dart';
import 'package:growskool/widgets/article_list.dart';
import 'package:growskool/widgets/navigation_bar.dart';
import 'package:growskool/widgets/unsplash_badge.dart';

class StartScreenInfoPage extends StatefulWidget {
  final BoxConstraints constraints;

  StartScreenInfoPage({this.constraints});

  @override
  _StartScreenInfoPageState createState() => _StartScreenInfoPageState();
}

class _StartScreenInfoPageState extends State<StartScreenInfoPage> {
  List<Article> _articles;

  List<Article> parseJson(String response) {
    if (response == null) {
      return [];
    }

    final parsed =
    json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<Article>((json) => Article.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(UnplashCredits.photo(UnplashCredits.aaronBurden)),
          colorFilter: ColorFilter.mode(
            Colors.white,
            BlendMode.colorBurn,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          NavigationBar(
            constraints: widget.constraints,
            pageTitle: 'Info',
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF).withOpacity(0.6),
              ),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.8,
              height: widget.constraints.maxWidth > 800 ? MediaQuery
                  .of(context)
                  .size
                  .height * 0.8 : MediaQuery
                  .of(context)
                  .size
                  .height * 0.68,
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/data/articles.json'),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Article> articles =
                    parseJson(snapshot.data.toString());
                    return articles.isNotEmpty
                        ? ArticlesList(
                      articles: articles,
                      constraints: widget.constraints,
                    )
                        : Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Text(
                          'Keine Text vorhanden',
                          style: TextStyle(
                              fontFamily: 'Lobster',
                              fontSize: 120,
                              color: Colors.white),
                        ),
                      ),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                UnsplashBadge(
                  url: UnplashCredits.url(UnplashCredits.aaronBurden),
                  photographer: UnplashCredits.name(UnplashCredits.aaronBurden),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
