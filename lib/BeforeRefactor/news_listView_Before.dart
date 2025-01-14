import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/ui/widgets/news_vertical_widgets/news.dart';

class NewsListViewBefore extends StatefulWidget {
  const NewsListViewBefore({super.key});

  @override
  State<NewsListViewBefore> createState() => _NewsListViewBeforeState();
}

class _NewsListViewBeforeState extends State<NewsListViewBefore> {
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
    return isDataLoading ? const SliverToBoxAdapter(child: Center(heightFactor:10 ,child: CircularProgressIndicator(),)) :
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

    //   ListView.builder(
    //     shrinkWrap: true,
    //     physics: NeverScrollableScrollPhysics(),
    //     itemCount: 6,
    //     itemBuilder: (BuildContext, index) {
    //       return const Column(
    //         children: [
    //           Padding(
    //             padding: EdgeInsets.only(bottom: 25),
    //             child: News(),
    //           ),
    //         ],
    //       );
    //     }
    // );
  }
}
