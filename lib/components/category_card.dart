import 'package:flutter/material.dart';
import '../models/category_model.dart';

class CatogeryCard extends StatelessWidget {
  const CatogeryCard({super.key, required this.categeryModel});
  final CategoryModel categeryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(categeryModel.image),
            fit: BoxFit.fill,
          ),
        ),
        height: 85,
        width: 150,
        child: Center(
            child: Text(
          categeryModel.name,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
