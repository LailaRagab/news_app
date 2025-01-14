import 'package:flutter/material.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/ui/widgets/news_vertical_widgets/news.dart';

class NewsListView extends StatelessWidget {
  final List<Article> generalNewsList;
  const NewsListView({super.key, required this.generalNewsList});
  @override
  Widget build(BuildContext context) {
    return
      SliverList(
      delegate: SliverChildBuilderDelegate(childCount: generalNewsList.length,
          (BuildContext, int) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: News(
            generalNews: generalNewsList[int],
          ),
        );
      }),
    );
  }
}
