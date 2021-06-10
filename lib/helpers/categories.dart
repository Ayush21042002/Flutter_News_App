import 'package:news_app/models/category.dart';

class Categories {
  static List<Category> getCategories() {
    List<Category> myCategories = [];
    Category category;

    //1
    category = Category(
      categoryName: "Business",
      imageUrl:
          "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80",
    );
    myCategories.add(category);

    //2
    category = Category(
      categoryName: "Entertainment",
      imageUrl:
          "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
    );
    myCategories.add(category);

    //3
    category = Category(
      categoryName: "General",
      imageUrl:
          "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    );
    myCategories.add(category);

    //4
    category = Category(
      categoryName: "Health",
      imageUrl:
          "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80",
    );
    myCategories.add(category);

    //5
    category = Category(
      categoryName: "Science",
      imageUrl:
          "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80",
    );
    myCategories.add(category);

    //5
    category = Category(
      categoryName: "Sports",
      imageUrl:
          "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
    );
    myCategories.add(category);

    //5
    category = Category(
      categoryName: "Technology",
      imageUrl:
          "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
    );
    myCategories.add(category);

    return myCategories;
  }
}
