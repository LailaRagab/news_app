import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/services/news_services.dart';

import '../ui/widgets/news_vertical_widgets/news_listView.dart';

class NewsListViewBuilderBefore extends StatefulWidget {
  const NewsListViewBuilderBefore({super.key, required first});

  @override
  State<NewsListViewBuilderBefore> createState() => _NewsListViewBuilderBeforeState();
}

class _NewsListViewBuilderBeforeState extends State<NewsListViewBuilderBefore> {
  bool isDataLoading = true;
  List<Article> generalNewsList = [];

  @override
  void initState() {
    super.initState();
    extractGetNews();
  }

  Future<void> extractGetNews() async {
    generalNewsList = await NewsServices(dio: Dio()).getNews(categoryType: '');
    isDataLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isDataLoading
        ? const SliverToBoxAdapter(
        child: Center(
          heightFactor: 10,
          child: CircularProgressIndicator(),
        ))
        : generalNewsList.isNotEmpty ?  NewsListView(generalNewsList: generalNewsList) :
    const SliverToBoxAdapter(child: Text("Sorry, There is an error !"),);
  }
}
