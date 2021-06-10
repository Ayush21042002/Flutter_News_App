import 'dart:convert';

import 'package:news_app/models/article.dart';
import 'package:news_app/utils/api_key.dart';
import 'package:http/http.dart' as http;

class CategoryNews {
  List<Article> newsArticles = [];

  Future<void> getArticles(String category) async {
    final url = Uri.parse(
        "http://newsapi.org/v2/everything?q=$category&apiKey=${ApiKey.apiKey}");

    try {
      final response = await http.get(url);
      final jsonData = jsonDecode(response.body);
      if (jsonData['articles'] != null) {
        jsonData['articles'].forEach((article) {
          if (article['title'] != null &&
              article["description"] != null &&
              article["url"] != null &&
              article["urlToImage"] != null) {
            final newArticle = Article(
              title: article['title'],
              description: article["description"],
              url: article["url"],
              imageUrl: article["urlToImage"],
              author: article["author"],
            );

            newsArticles.add(newArticle);
          }
        });
      }
    } catch (error) {
      print(error);
    }
  }
}
