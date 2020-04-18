import 'package:flutter/material.dart';
import 'package:growskool/utils/unsplash_credits.dart';
import 'package:growskool/widgets/navigation_bar.dart';
import 'package:growskool/widgets/unsplash_badge.dart';

class StartScreenLearningPage extends StatelessWidget {
  final BoxConstraints constraints;

  StartScreenLearningPage({this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(UnplashCredits.photo(UnplashCredits.denisseLeon)),
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
            constraints: constraints,
            pageTitle: 'Lernen',
          ),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                UnsplashBadge(
                  url: UnplashCredits.url(UnplashCredits.denisseLeon),
                  photographer: UnplashCredits.name(UnplashCredits.denisseLeon),
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
