import 'package:flutter/material.dart';
import 'package:news_app/models/horizontal_categories_model.dart';
import 'package:news_app/style/images.dart';

class CategoryCards extends StatelessWidget {
  CategoryCards({super.key, required this.model});

  final HorizontalCategoriesModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
