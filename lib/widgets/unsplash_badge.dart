import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UnsplashBadge extends StatelessWidget {
  final String url;
  final String photographer;

  const UnsplashBadge({
    this.url,
    this.photographer,
    Key key,
  }) : super(key: key);

  void _lauchUrl() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Fluttertoast.showToast(
        msg: 'Die Seite $url konnte nicht aufgerufen werden.',
        toastLength: Toast.LENGTH_LONG,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _lauchUrl();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Color(0xFF000000).withOpacity(0.6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/unsplash.png'),
              width: 24,
            ),
            SizedBox(
              width: 6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Foto von',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 8,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  photographer,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
