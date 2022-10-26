import 'package:flutter/material.dart';
import 'package:foodmanager/models/category.dart';
import 'package:foodmanager/utils/routers.dart';


class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final Category category;

  selectCategory(BuildContext context){
    Navigator.of(context).pushNamed(
      AppRouters.DISHES, 
      arguments: category
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.red,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color
            ],
            begin: Alignment.topLeft, 
            end: Alignment.bottomRight
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleMedium,
        )
      ),
    );
  }
}