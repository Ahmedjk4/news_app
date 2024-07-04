import 'package:flutter/material.dart';
import 'package:news_app/components/category_card.dart';
import 'package:news_app/models/category_model.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, required this.catogeriesList});
  final List<CategoryModel> catogeriesList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CatogeryCard(categeryModel: catogeriesList[index]);
        },
        itemCount: catogeriesList.length,
      ),
    );
  }
}
