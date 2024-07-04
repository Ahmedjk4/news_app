import 'package:flutter/material.dart';
import 'package:news_app/components/category_list_view.dart';
import 'package:news_app/components/news_list_view.dart';
import 'package:news_app/models/category_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<CategoryModel> catogeryList = const [
    CategoryModel(name: "Sports", image: 'assets/sports.avif'),
    CategoryModel(name: "Buisness", image: 'assets/business.avif'),
    CategoryModel(name: "Entertainment", image: 'assets/entertaiment.avif'),
    CategoryModel(name: "General", image: 'assets/general.avif'),
    CategoryModel(name: "Health", image: 'assets/health.avif'),
    CategoryModel(name: "Science", image: 'assets/science.avif'),
    CategoryModel(name: "Technology", image: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "News",
          ),
          Text(
            "Cloud",
            style: TextStyle(color: Colors.orange),
          )
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CategoryListView(catogeriesList: catogeryList),
            const SizedBox(height: 32),
            Expanded(child: NewsListView())
          ],
        ),
      ),
    );
  }
}
