abstract class UnplashCredits {
  static List<String> aaronBurden = [
    'Aaron Burden',
    'https://unsplash.com/@aaronburden?utm_medium=referral&amp;utm_campaign=photographer-credit&amp;utm_content=creditBadge',
    'assets/images/aaron-burden.jpg'
  ];

  static List<String> aaronBurdenPen = [
    'Aaron Burden',
    'https://unsplash.com/@aaronburden?utm_medium=referral&amp;utm_campaign=photographer-credit&amp;utm_content=creditBadge',
    'assets/images/aaron-burden-pens.jpg'
  ];

  static List<String> mattRagland = [
    'Matt Ragland',
    'https://unsplash.com/@mattragland?utm_medium=referral&amp;utm_campaign=photographer-credit&amp;utm_content=creditBadge',
    'assets/images/matt-ragland.jpg'
  ];

  static List<String> mylesTan = [
    'Myles Tan',
    'https://unsplash.com/@mylestan?utm_medium=referral&amp;utm_campaign=photographer-credit&amp;utm_content=creditBadge',
    'assets/images/myles-tan.jpg'
  ];

  static List<String> denisseLeon = [
    'Denisse Leon',
    'https://unsplash.com/@denisseleon?utm_medium=referral&amp;utm_campaign=photographer-credit&amp;utm_content=creditBadge',
    'assets/images/denisse-leon.jpg'
  ];

  static String name(List<String> creditTaker) {
    return creditTaker[0];
  }

  static String url(List<String> creditTaker) {
    return creditTaker[1];
  }

  static String photo(List<String> creditTaker) {
    return creditTaker[2];
  }
}
