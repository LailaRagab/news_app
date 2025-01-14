import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/services/news_services.dart';

import 'news_listView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.categoryIdentification});

  final String categoryIdentification;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsServices(dio: Dio())
        .getNews(categoryType: widget.categoryIdentification);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(generalNewsList: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Text("Sorry, There is an error !"));
          } else {
            return const SliverToBoxAdapter(
                child: Center(
              heightFactor: 10,
              child: CircularProgressIndicator(),
            ));
          }
        });
  }
}
