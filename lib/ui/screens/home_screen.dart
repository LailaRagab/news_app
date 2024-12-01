import 'package:flutter/material.dart';
import 'package:news_app/ui/widgets/categories_horizontal_widgets/categories_listView.dart';
import 'package:news_app/ui/widgets/news_vertical_widgets/news.dart';
import 'package:news_app/ui/widgets/news_vertical_widgets/news_listView.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News" , style: TextStyle(
              color: Colors.black ,
            ),
            ),
            Text("Cloud" , style: TextStyle(
              color: Colors.orange ,
            ),)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesListview()),
            const SliverToBoxAdapter(child: SizedBox(height: 25,)),
             const NewsListView(),
      ]
            ),
            ),
    );
  }
}
