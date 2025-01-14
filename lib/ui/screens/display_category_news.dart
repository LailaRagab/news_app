import 'package:flutter/material.dart';
import 'package:news_app/BeforeRefactor/news_listView_builder_before.dart';
import 'package:news_app/models/horizontal_categories_model.dart';
import 'package:news_app/ui/widgets/news_vertical_widgets/news_listView_builder.dart';

class DisplayCategoryNews extends StatelessWidget {
  const DisplayCategoryNews({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      CustomScrollView(
      slivers: [
        NewsListViewBuilder(categoryIdentification: category),
      ],
    ),
    );
  }
}
