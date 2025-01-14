// class for API request.
import 'package:dio/dio.dart';
import 'package:news_app/models/article.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});

  Future<List<Article>>getNews({required String categoryType}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=0ba430b1f4bd4406ae7cead0348c272c&category=$categoryType");
      Map<String, dynamic> jsonData = response.data;
      List <dynamic> articles= jsonData['articles'];
      // To convert each map inside the articles list into obj
      List<Article> articleList = [];
      for (var article in articles){
        Article articleContent = Article.fromJson(article);
        articleList.add(articleContent);
      }
      //list of objects 'articles'
         return articleList;
    } on Exception catch (e) {

    }
    return [];
  }
}
