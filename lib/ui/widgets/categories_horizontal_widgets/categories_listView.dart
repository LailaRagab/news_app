import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/display_category_news.dart';
import '../../../models/horizontal_categories_model.dart';
import '../../../style/images.dart';
import 'category_cards.dart';

class CategoriesListview extends StatelessWidget {
  CategoriesListview({super.key});

  final List<HorizontalCategoriesModel> categoriesList =[
    HorizontalCategoriesModel(bgImage: Images.businessCard, name: "Business" ) ,
    HorizontalCategoriesModel(bgImage: Images.entertainmentCard, name: "Entertainment" ) ,
    HorizontalCategoriesModel(bgImage: Images.sportsCard, name: "Sports" ) ,
    HorizontalCategoriesModel(bgImage: Images.healthCard, name: "Health" ) ,
    HorizontalCategoriesModel(bgImage: Images.technologyCard, name: "Technology" ) ,
    HorizontalCategoriesModel(bgImage: Images.scienceCard, name: "Science" ) ,
    HorizontalCategoriesModel(bgImage: Images.generalCard, name: "General" ) ,
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (BuildContext , index){
          return Padding(
            padding: const EdgeInsets.all(5),
            child: CategoryCards(
              model: categoriesList[index],
            ),
          ) ;
        },
      ),
    );
  }
}
