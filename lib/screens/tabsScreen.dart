

import 'package:flutter/material.dart';
import 'package:foodmanager/components/mainDrawer.dart';
import 'package:foodmanager/screens/categories.dart';
import 'package:foodmanager/screens/dishesCategory.dart';
import 'package:foodmanager/screens/favoritesScreen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int selectedScreenIndex = 0;
  final List<Map<String, Object>> screens = [
    {"title": "Categories", "screen": const CategoriesScreen()},
    {"title": "Favorites", "screen": const FavoritesScreen()}
  ];

  selectScreen(int index){
    setState(() {
      selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screens[selectedScreenIndex].cast()["title"] as String)
      ),
      body: screens[selectedScreenIndex].cast()["screen"] as Widget,
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectScreen,
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: selectedScreenIndex,
        type: BottomNavigationBarType.shifting,
        items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.pink,
          icon: Icon(
            Icons.category,
          ),
          label: "categories" ,
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.pink,
          icon: Icon(Icons.star),
          label: "Favorites" 
        ),
      ]),
    );
  }
}