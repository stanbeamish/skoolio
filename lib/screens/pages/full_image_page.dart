import 'package:flutter/material.dart';

class FullImagePage extends StatelessWidget {
  static String id = "fullimagepage";

  final String image;
  final String imageTitle;

  FullImagePage({this.image, this.imageTitle});

  @override
  Widget build(BuildContext context) {
    final FullImagePageArgs args = ModalRoute.of(context).settings.arguments;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.imageTitle),
        ),
        body: Container(
          child: Hero(
            tag: args.image,
            child: Image.asset(args.image),
          ),
        ),
      ),
    );
  }
}

class FullImagePageArgs {
  final String image;
  final String imageTitle;

  FullImagePageArgs({this.image, this.imageTitle});
}
