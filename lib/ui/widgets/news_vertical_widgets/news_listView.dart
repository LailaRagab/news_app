import 'package:flutter/cupertino.dart';
import 'package:news_app/ui/widgets/news_vertical_widgets/news.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});
  @override
  Widget build(BuildContext context) {
    return
      SliverList(delegate: SliverChildBuilderDelegate(
          childCount: 6,
              (BuildContext, int) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: const News(),
            );

          }
      ),
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
