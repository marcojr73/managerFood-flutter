import 'package:flutter/material.dart';
import 'package:foodmanager/models/dishes.dart';

class DishDetailScreen extends StatelessWidget {
  const DishDetailScreen({super.key});

  Widget _fieldTitleIngredients(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        "Ingredientes",
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  Widget _fieldIngredients(Widget child) {
    return Container(
        width: 300,
        height: 300,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final dish = ModalRoute.of(context)?.settings.arguments as Dishes;
    return Scaffold(
      appBar: AppBar(
        title: Text(dish.title),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.network(
              dish.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          _fieldTitleIngredients(context, "Ingredientes"),
          _fieldIngredients(
            ListView.builder(
              itemCount: dish.ingredients.length,
              itemBuilder: (ctx, index) {
                return Card(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      dish.ingredients[index],
                    ),
                  ),
                );
              },
            ),
          ),
          _fieldTitleIngredients(context, "Steps"),
          _fieldIngredients(
            ListView.builder(
              itemCount: dish.steps.length,
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Text("${index + 1}"),
                      ),
                      title: Text(dish.steps[index]),
                    ),
                    const Divider()
                  ]
                );
              },
            ),
          ),
        ]),
      ),  
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.star),
        onPressed: () {
          Navigator.of(context).pop(dish.title);
        },
      ),
    );
  }
}
