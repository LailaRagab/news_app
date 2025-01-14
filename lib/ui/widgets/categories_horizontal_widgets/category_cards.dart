import 'package:flutter/material.dart';
import 'package:news_app/models/horizontal_categories_model.dart';
import 'package:news_app/style/images.dart';
import 'package:news_app/ui/screens/display_category_news.dart';

class CategoryCards extends StatelessWidget {
  const CategoryCards({super.key, required this.model});

  final HorizontalCategoriesModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.of(context).push(MaterialPageRoute(builder:
        (context){
          return DisplayCategoryNews(category: model.name);
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(model.bgImage) ,
               fit: BoxFit.fill),
        ),
        width: 200,
        height: 150,
        child: Center(
          child: Text(model.name, style:
            const TextStyle(
              color: Colors.white ,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
        ),
      ),
    );
  }
}
