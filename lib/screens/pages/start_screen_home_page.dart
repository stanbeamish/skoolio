import 'package:flutter/material.dart';
import 'package:growskool/widgets/center_title.dart';
import 'package:growskool/widgets/claim_badge.dart';
import 'package:growskool/widgets/unsplash_badge.dart';
import 'package:growskool/utils/unsplash_credits.dart';
import 'package:growskool/widgets/navigation_bar.dart';

class StartScreenHomePage extends StatelessWidget {
  final BoxConstraints constraints;

  StartScreenHomePage({this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(UnplashCredits.photo(UnplashCredits.mattRagland)),
          colorFilter: ColorFilter.mode(
            Colors.white,
            BlendMode.colorBurn,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          CenterTitle(constraints: constraints),
          NavigationBar(
            constraints: constraints,
            pageTitle: 'Start',
          ),
          ClaimBadge(constraints: constraints),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                UnsplashBadge(
                  url: UnplashCredits.url(UnplashCredits.mattRagland),
                  photographer: UnplashCredits.name(UnplashCredits.mattRagland),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
