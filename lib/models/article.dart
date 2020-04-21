class Article {
  final String image;
  final String title;
  final String subtitle;
  final String text;

  Article({this.image, this.title, this.subtitle, this.text});

  factory Article.fromJson(Map<String, dynamic> json) {
    return new Article(
        image: json['image'] as String,
        title: json['title'] as String,
        subtitle: json['subtitle'] as String,
        text: json['text'] as String);
  }
}
