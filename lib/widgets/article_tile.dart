import 'package:flutter/material.dart';
import 'package:news_app/screens/article_view.dart';

class ArticleTile extends StatelessWidget {
  const ArticleTile({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.url,
    required this.description,
  }) : super(key: key);
  final String title;
  final String imageUrl;
  final String url;
  final String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => ArticleView(url),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
