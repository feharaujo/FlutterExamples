import 'package:hacker_news_app/data/Article.dart';
import 'dart:convert' as json;

List<int> parseTopStories(String jsonString) {
  final parsed = json.jsonDecode(jsonString);
  final listOfIds = List<int>.from(parsed);
  return listOfIds;
}

Article parseArticle(String jsonString) {
  final parsed = json.jsonDecode(jsonString);
  Article article = Article.fromJson(parsed);
  return article;
}