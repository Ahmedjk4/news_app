import 'package:flutter/material.dart';
import 'package:news_app/components/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return NewsTile();
      },
      itemCount: 10,
    );
  }
}
