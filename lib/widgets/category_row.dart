import 'package:flutter/material.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/widgets/category_tile.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow(this.categories, {Key? key}) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemBuilder: (ctx, idx) => CategoryTile(
            categoryName: categories[idx].categoryName,
            imageUrl: categories[idx].imageUrl),
        itemCount: categories.length,
      ),
    );
  }
}
