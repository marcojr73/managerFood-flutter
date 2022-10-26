import 'package:flutter/material.dart';
import 'package:foodmanager/components/meal.dart';
import 'package:foodmanager/data/dummy_data.dart';
import 'package:foodmanager/models/category.dart';

class DishesCategoryScreen extends StatelessWidget {
  const DishesCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    final categoryDish = dummyDishes.where((e) {
      return e.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: categoryDish.length,
          itemBuilder: (ctx, index) {
            return Meal(meal: categoryDish[index]);
          },
      ))
    );
  }
}