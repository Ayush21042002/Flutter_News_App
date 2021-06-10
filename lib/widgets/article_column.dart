import 'package:flutter/material.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/widgets/article_tile.dart';

class ArticleColumn extends StatelessWidget {
  const ArticleColumn(this.currentNews, {Key? key}) : super(key: key);

  final List<Article> currentNews;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        itemBuilder: (ctx, idx) => ArticleTile(
          title: currentNews[idx].title,
          description: currentNews[idx].description,
          imageUrl: currentNews[idx].imageUrl,
          url: currentNews[idx].url,
        ),
        itemCount: currentNews.length,
      ),
    );
  }
}
