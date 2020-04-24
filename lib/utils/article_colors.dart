import 'package:flutter/material.dart';

abstract class ArticleColors {
  static getTopicColor(String topic, bool withOpacity) {
    switch (topic) {
      case "Lernen Allgemein":
        {
          if (withOpacity) return Color(0xFF02B810).withOpacity(0.1);
          return Color(0xFF02B810);
        }
        break;
      case "Lernhilfen":
        {
          if (withOpacity) return Color(0xFF33C4FF).withOpacity(0.1);
          return Color(0xFF33C4FF);
        }
        break;
      default:
        {
          if (withOpacity) return Color(0xFF757374).withOpacity(0.1);
          return Color(0xFF757374);
        }
        break;
    }
  }
}
