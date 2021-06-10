import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/category_news_view.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.imageUrl,
    required this.categoryName,
  }) : super(key: key);
  final String imageUrl;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => CategoryNewsView(categoryName),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(4),
        child: Stack(
          children: [
            ClipRRect(
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                height: 60,
                width: 120,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(6),
              ),
              alignment: Alignment.center,
              height: 60,
              width: 120,
              child: Text(
                categoryName,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
