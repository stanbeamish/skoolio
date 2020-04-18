import 'package:flutter/material.dart';
import 'package:growskool/utils/unsplash_credits.dart';
import 'package:growskool/widgets/navigation_bar.dart';
import 'package:growskool/widgets/unsplash_badge.dart';

class StartScreenInfoPage extends StatelessWidget {
  final BoxConstraints constraints;

  StartScreenInfoPage({this.constraints});

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
            constraints: constraints,
            pageTitle: 'Info',
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
