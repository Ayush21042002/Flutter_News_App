import 'package:flutter/material.dart';
import 'package:news_app/helpers/categories.dart';
import 'package:news_app/helpers/news.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/widgets/article_column.dart';
import 'package:news_app/widgets/category_row.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Article> _currentNews = [];
  bool _isLoading = true;
  List<Category> _categories = [];

  @override
  void initState() {
    super.initState();
    _categories = Categories.getCategories();
    getNews();
  }

  getNews() async {
    final newsInstance = News();
    await newsInstance.getHeadlines();
    setState(() {
      _currentNews = newsInstance.newsArticles;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News4U',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              child: CategoryRow(_categories),
            ),
            _isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ArticleColumn(_currentNews),
          ],
        ),
      ),
    );
  }
}
