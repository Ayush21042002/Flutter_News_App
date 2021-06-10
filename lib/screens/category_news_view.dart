import 'package:flutter/material.dart';
import 'package:news_app/helpers/category_news.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/widgets/article_column.dart';

class CategoryNewsView extends StatefulWidget {
  const CategoryNewsView(this.categoryName,{Key? key}) : super(key: key);

  final String categoryName;

  @override
  _CategoryNewsViewState createState() => _CategoryNewsViewState();
}

class _CategoryNewsViewState extends State<CategoryNewsView> {

  bool _isLoading = true;
  List<Article> _currentNews = [];

  @override
  void initState() {
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async{
    final categoryNews = CategoryNews();
    await categoryNews.getArticles(widget.categoryName);
    setState(() {
      _currentNews = categoryNews.newsArticles;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "News4U",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.share,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
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
