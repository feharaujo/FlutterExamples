/*class Article {

  final String title;
  final String url;
  final String by;
  final int time;
  final int score;

  const Article(
      {this.title,
      this.url,
      this.by,
      this.time,
      this.score});

  factory Article.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Article(
      title: json['text'] ?? '[null]',
      url: json['url'],
      by: json['by'],
      time: json['age'],
      score: json['score']
    );
  }

  static List<Article> fakeData() {
    var fakeList = List<Article>();
    for (var i = 0; i < 50; i++) {
      var text = "Article num $i";
      var domain = "www.google.com";
      var by = "by $i";
      var timestamp = i;
      int score = i * 13;
      fakeList.add(Article(
          title: text,
          url: domain,
          by: by,
          time: timestamp,
          score: score));
    }

    return fakeList;
  }
}*/

import 'package:built_value/built_value.dart';

part 'Article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {

  int get id;

  Article._();
  factory Article([void Function(ArticleBuilder) updates]) = _$Article;
}
