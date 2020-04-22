class Article {
  final String author;
  final String image;
  final String title;
  final String subtitle;
  final String text;
  final String topic;
  final String date;

  Article(
      {this.author, this.image, this.title, this.subtitle, this.text, this.topic, this.date});

  factory Article.fromJson(Map<String, dynamic> json) {
    return new Article(
        author: json['author'] as String,
        image: json['image'] as String,
        title: json['title'] as String,
        subtitle: json['subtitle'] as String,
        text: json['text'] as String,
        topic: json['topic'] as String,
        date: json['date'] as String);
  }
}
