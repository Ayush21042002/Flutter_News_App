import 'dart:convert';

import 'package:news_app/models/article.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/utils/api_key.dart';

class News {
  List<Article> newsArticles = [];

  Future<void> getHeadlines() async {
    // print("called");
    final url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=${ApiKey.apiKey}");

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
      // print(newsArticles);
    } catch (error) {
      print(error);
    }
  }
}
